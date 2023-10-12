#!/bin/bash

# Vars and respective defaults
export CERBERUS_ENABLED=${CERBERUS_ENABLED:=False}
export CERBERUS_URL=${CERBERUS_URL:=http://0.0.0.0:8080}
export KRKN_KUBE_CONFIG=${KRKN_KUBE_CONFIG:=/root/.kube/config}
export WAIT_DURATION=${WAIT_DURATION:=60}
export ITERATIONS=${ITERATIONS:=1}
export DAEMON_MODE=${DAEMON_MODE:=False}
export RETRY_WAIT=${RETRY_WAIT:=120}
export PUBLISH_KRAKEN_STATUS=${PUBLISH_KRAKEN_STATUS:=False}
export SIGNAL_ADDRESS=${SIGNAL_ADDRESS:=0.0.0.0}
export PORT=${PORT:=8081}
export SIGNAL_STATE=${SIGNAL_STATE:=RUN}
export DEPLOY_DASHBOARDS=${DEPLOY_DASHBOARDS:=False}
export CAPTURE_METRICS=${CAPTURE_METRICS:=False}
export ENABLE_ALERTS=${ENABLE_ALERTS:=False}
export ALERTS_PATH=${ALERTS_PATH:=config/alerts}
export ES_SERVER=${ES_SERVER:=http://0.0.0.0:9200}
export CHECK_CRITICAL_ALERTS=${CHECK_CRITICAL_ALERTS:=False}
export KUBE_BURNER_URL=${KUBE_BURNER_URL:=https://github.com/cloud-bulldozer/kube-burner/releases/download/v1.7.0/kube-burner-1.7.0-Linux-x86_64.tar.gz}
export TELEMETRY_ENABLED=${TELEMETRY_ENABLED:=False}
export TELEMETRY_API_URL=${TELEMETRY_API_URL:=https://ulnmf9xv7j.execute-api.us-west-2.amazonaws.com/production}
export TELEMETRY_USERNAME=${TELEMETRY_USERNAME:=redhat-chaos}
export TELEMETRY_PASSWORD=${TELEMETRY_PASSWORD}
export TELEMETRY_PROMETHEUS_BACKUP=${TELEMETRY_PROMETHEUS_BACKUP:=True}
export TELEMTRY_FULL_PROMETHEUS_BACKUP=${TELEMETRY_FULL_PROMETHEUS_BACKUP:=False}
export TELEMETRY_BACKUP_THREADS=${TELEMETRY_BACKUP_THREADS:=5}
export TELEMETRY_ARCHIVE_PATH=${TELEMETRY_ARCHIVE_PATH:=/tmp}
export TELEMETRY_MAX_RETRIES=${TELEMETRY_MAX_RETRIES:=0}
export TELEMETRY_RUN_TAG=${TELEMETRY_RUN_TAG:=chaos}
export TELEMETRY_ARCHIVE_SIZE=${TELEMETRY_ARCHIVE_SIZE:=1000}
export TELEMETRY_LOGS_BACKUP=${TELEMETRY_LOGS_BACKUP:=True}

# Unset KUBECONFIG to make sure mounted kubeconfig is used
unset KUBECONFIG
