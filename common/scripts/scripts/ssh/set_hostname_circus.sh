#!/bin/zsh

# This script requires awscli, jq, and gnu-sed.
# brew install awscli jq gnu-sed.

(
  # 実行中のEC2の一覧を取得し、BEインスタンスの名前とインスタンスIDを抽出
  ec2=$(
    aws ec2 describe-instances | \
    jq -c '[.Reservations[] | .Instances[] | select(.State.Name == "running") | {name: (.Tags[] | select({Key: "Name"})).Value, InstanceId: .InstanceId}  | select(contains({name: "circus_agent"})) | select(contains({name: "-backend-ASG"}))]'
  )

  function replace() {
    local env="${1}"
    local ec2_key=''
    # 他に環境増えたらこれも増やす.増えすぎたら連想配列にする
    if [ "$env" = 'dev' ]; then
      ec2_key='qa'
    elif [ "$env" = 'dev1' ]; then
      ec2_key='dev1'
    fi

    # インスタンスIDの取得
    local instance_id=$(echo $ec2 | jq -r "[.[] | select(contains({name: \"${ec2_key}\"}))] | .[0] | .InstanceId" )

    sed -i -E -z "s/(Host circus-$env\n[[:space:]]+HostName[[:space:]]+)i-[[:alnum:]]+/\\1$instance_id/" ~/.ssh/config
  }

  # 他に環境増えたらこれも増やす
  replace dev
  replace dev1
)

