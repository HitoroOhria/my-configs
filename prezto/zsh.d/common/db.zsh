# MySQL
## mysqldump
alias mysqldump='mysqldump --single-transaction --hex-blob --skip-triggers --set-gtid-purged=OFF'
alias dumptod='mysqldump  -u -p -h 127.0.0.1 -P 13306 database_name > ~/Downloads/database_name_$(date "+%Y-%m-%d_%H-%M-%S").dump'
