#!/bin/bash

info() {
    echo "[INFO] $1"
}

error() {
    echo "[ERROR] $1"
    exit 1
}

log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') [INFO] $1" >> logs/migration.log
}

log_error() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') [ERROR] $1" >> logs/migration.log
}
