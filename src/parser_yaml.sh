#!/bin/bash

parse_yaml() {
    local yaml_file=$1
    echo "Parsing YAML config: $yaml_file"
    # Пример парсинга
    cat "$yaml_file"
}
