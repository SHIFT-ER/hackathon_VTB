#!/bin/bash

migrate_table() {
    local source_db=$1
    local target_db=$2
    local table_name=$3

    echo "Migrating table $table_name from $source_db to $target_db"
    
    # Используем pg_dump для создания дампа таблицы
    pg_dump -h $source_db -U admin -t $table_name $source_db | pg_restore -h $target_db -U admin -d $target_db
}

log_message "Started migrating table $table_name"
