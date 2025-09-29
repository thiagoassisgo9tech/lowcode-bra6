#!/bin/bash
set -e
set -u

mkdir -p ./data/flowise
mkdir -p ./data/minio
mkdir -p ./data/n8n
mkdir -p ./data/stirling-pdf
mkdir -p ./data/clickhouse/data
mkdir -p ./data/clickhouse/logs
mkdir -p ./data/pgadmin
mkdir -p ./data/postgres/data
mkdir -p ./data/postgres/backup
mkdir -p ./data/qdrant
mkdir -p ./data/redis
mkdir -p ./data/redisinsight

chmod -R 777 ./data

docker compose -f docker-compose.yml -f docker-compose.local.yml -p ninengine up -d
