dphp() {
    pwd=$(pwd)
    current_path="${pwd/\/home\/light\/Dev/''}"
    docker exec -it -w $current_path fpm74_a /bin/bash
}

dmysql() {
    docker exec -it -w /sql mysql /bin/bash
}

dumpdb() {
    db_name="$1"
    docker exec mysql /usr/bin/mysqldump $db_name
}

restoredb() {
    sql_path="$1"
    db_name="$2"
    cat $sql_path | docker exec -i mysql /usr/bin/mysql $db_name
}