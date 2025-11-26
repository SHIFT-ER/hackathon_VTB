#!/bin/bash

migrate_schema() {
    local source_db=$1
    local target_db=$2
    local schema_name=$3

    echo "Migrating schema $schema_name from $source_db to $target_db"
    
    # Используем pg_dump для создания дампа схемы
    pg_dump -h $source_db -U admin -n $schema_name $source_db | pg_restore -h $target_db -U admin -d $target_db
}

log_message "Started migrating table $table_name"
