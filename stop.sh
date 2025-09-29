#!/bin/bash
set -e
set -u

docker compose -p ninengine down --remove-orphans --rmi local
