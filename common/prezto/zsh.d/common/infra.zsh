# docker
## set docker
export COMPOSE_HTTP_TIMEOUT=120
alias get_docker_contaienr_id='docker ps | tail -n +2 | peco | cut -d" " -f1'
alias d='docker'
alias dl='docker logs'
alias db='docker build'
alias di='docker image'
alias din='docker inspect'
alias dc='docker container'
# Use like '$ dce bash' or '$ dce ash'
alias dce='docker container exec -it $(get_docker_contaienr_id)'
alias dk='docker kill $(get_docker_contaienr_id)'
alias dv='docker volume'
alias dn='docker network'

## set docker-compose
alias com='docker compose'
alias come='docker compose exec'
# docker compose completion (see https://stackoverflow.com/a/78321393)
DOCKER_COMPOSE_COMPLETION_FILE=~/.docker-compose-completion.sh
if [ -e "$DOCKER_COMPOSE_COMPLETION_FILE" ]; then
    . "$DOCKER_COMPOSE_COMPLETION_FILE"
else
    docker completion zsh > "$DOCKER_COMPOSE_COMPLETION_FILE"
    chmod +x "$DOCKER_COMPOSE_COMPLETION_FILE"
    . "$DOCKER_COMPOSE_COMPLETION_FILE"
fi
#if [ -e "~/.docker-compose-completioon.sh" ]; then
#    . ~/.docker-compose-completioon.sh
#else
#    docker completion zsh > ~/.docker-compose-completioon.sh
#    chmod +x ~/.docker-compose-completioon.sh
#    . ~/.docker-compose-completioon.sh
#fi

## set docker-clean
alias dcl='docker-clean'

## set kubectl
alias ku='kubectl'
alias kuls='kubectl get pod'
alias get_k8s_pod_id='kubectl get pod | tail -n +2 | peco | cut -d" " -f1'
alias kulog='kubectl logs -f $(get_k8s_pod_id)'
alias kudel='kubectl delete pod $(get_k8s_pod_id)'

# terraform
alias tf='terraform'

