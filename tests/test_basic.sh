#!/bin/bash

echo "Running basic tests..."

# Пример теста для миграции
./bin/pg_migrate.sh config/config.example.yaml

echo "Test completed!"
