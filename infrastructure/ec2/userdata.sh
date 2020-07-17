#!/bin/bash
apt update && apt upgrade -y
apt install openjdk-11-jre -y
curl -o /home/ubuntu/openrefine-linux-3.4-beta2.tar.gz -L https://github.com/OpenRefine/OpenRefine/releases/download/3.4-beta2/openrefine-linux-3.4-beta2.tar.gz
cd /home/ubuntu/
tar zxvf openrefine-linux-3.4-beta2.tar.gz
cd openrefine-3.4-beta2
cat << EOF > refine-dev.ini
no_proxy="localhost,127.0.0.1"
REFINE_HOST=0.0.0.0
REFINE_MAX_FORM_CONTENT_SIZE=2147483647
REFINE_MEMORY=63G
REFINE_MIN_MEMORY=60G
REFINE_AUTOSAVE_PERIOD=60
EOF
./refine &
