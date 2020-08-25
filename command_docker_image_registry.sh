
#!/bin/bash
# set -uex -o pipefail
set -ue

echo "login to ecr"
aws ecr get-login-password | docker login --username AWS --password-stdin 411396279728.dkr.ecr.ap-northeast-1.amazonaws.com

echo "registry master image"
docker tag jmeter-master:latest 411396279728.dkr.ecr.ap-northeast-1.amazonaws.com/jmeter-master:latest
docker push 411396279728.dkr.ecr.ap-northeast-1.amazonaws.com/jmeter-master:latest

echo "registry slave image"
docker tag jmeter-slave:latest 411396279728.dkr.ecr.ap-northeast-1.amazonaws.com/jmeter-slave:latest
docker push 411396279728.dkr.ecr.ap-northeast-1.amazonaws.com/jmeter-slave:latest
