#!/bin/bash
set -e

echo "🚀 Starting PostgreSQL migration CLI"

# Подключаем утилиты
source "$(dirname "$0")/../src/utils.sh"

# Проверяем аргументы
if [[ -z "$1" ]]; then
    error "Usage: ./pg_migrate.sh <config_file>"
fi

CONFIG_FILE="$1"

info "Using config: $CONFIG_FILE"

# Определяем формат файла
EXT="${CONFIG_FILE##*.}"

case $EXT in
  yaml|yml)
    source "$(dirname "$0")/../src/parser_yaml.sh"
    parse_yaml "$CONFIG_FILE"
    ;;
  json)
    source "$(dirname "$0")/../src/parser_json.sh"
    parse_json "$CONFIG_FILE"
    ;;
  *)
    error "Unsupported config format: $EXT"
    ;;
esac

info "Migration completed."
