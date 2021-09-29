#!/usr/bin/env bash

set -xe

# shellcheck disable=SC1091
source lib/logging.sh
# shellcheck disable=SC1091
source lib/common.sh
# shellcheck disable=SC1091
source lib/network.sh

sudo virsh net-destroy baremetal
sudo virsh net-destroy provisioning
sudo ip link set provisioning down
sudo brctl delbr provisioning
sudo ip link delete ironic-peer

