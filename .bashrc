dphp() {
    pwd=$(pwd)
    current_path="${pwd/\/home\/light\/Dev/''}"
    dexec lemp_php74_1 $current_path
}

dmysql() {
    dexec lemp_mysql /sql
}

dumpdb() {
    db_name="$1"
    docker exec lemp_mysql /usr/bin/mysqldump $db_name
}

restoredb() {
    sql_path="$1"
    db_name="$2"
    cat $sql_path | docker exec -i lemp_mysql /usr/bin/mysql $db_name
}

sv_up() {
    docker-compose -f /home/light/Dev/docker-lemp/docker-compose.yml -p lemp up -d
}

sv_down() {
    docker-compose -f /home/light/Dev/docker-lemp/docker-compose.yml -p lemp down
}

sv_start() {
    docker-compose -f /home/light/Dev/docker-lemp/docker-compose.yml -p lemp start
}

sv_stop() {
    docker-compose -f /home/light/Dev/docker-lemp/docker-compose.yml -p lemp stop
}