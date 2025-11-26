#!/bin/bash
# Скрипт для миграции всей схемы (schema)

migrate_schema() {
    local src_host="$1"
    local src_port="$2"
    local src_db="$3"
    local src_user="$4"
    local tgt_host="$5"
    local tgt_port="$6"
    local tgt_db="$7"
    local tgt_user="$8"
    local schema_name="$9"

    echo "Migrating schema $schema_name from $src_db to $tgt_db"

    pg_dump -h "$src_host" -p "$src_port" -U "$src_user" -n "$schema_name" "$src_db" \
      | pg_restore -h "$tgt_host" -p "$tgt_port" -U "$tgt_user" -d "$tgt_db"
}
