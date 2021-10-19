#!/bin/bash

set -ex

# Source env.sh to read all the vars
source /root/env.sh

ls -la /root/.kube

source /root/common_run.sh
checks

# Substitute config with environment vars defined
envsubst < /root/kraken/scenarios/pod_scenario.yaml.template > /root/kraken/scenarios/pod_scenario.yaml
envsubst < /root/kraken/config/config.yaml.template > /root/kraken/config/config.yaml

# Run Kraken
cd /root/kraken

pip list | grep powerfulseal
python3 run_kraken.py --config=config/config.yaml
