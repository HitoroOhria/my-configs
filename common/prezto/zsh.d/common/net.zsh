function curlt() {
  curl -s -w "time_total: %{time_total}\n" -o /dev/null "$1" | awk '{printf "%s %.2f ms\n", $1, $2*1000}'
}

