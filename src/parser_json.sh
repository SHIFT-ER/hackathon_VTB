#!/bin/bash

parse_json() {
    local json_file=$1
    echo "Parsing JSON config: $json_file"
    # Пример парсинга
    cat "$json_file"
}
