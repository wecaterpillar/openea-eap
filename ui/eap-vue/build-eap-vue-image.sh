#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${DIR}
docker build -t eap-vue:latest  -f ./Dockerfile .
if [ ! -d "target" ];then
  mkdir target
fi

docker save -o ./target/eap-vue-latest-image.tar eap-vue:latest
echo "eap-vue:latest镜像构建成功,已导出到target目录"
