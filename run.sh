#!/bin/bash

CURRENT_PATH=`pwd`
docker run -p 8889:8889 -v ${CURRENT_PATH}/work:/work -t mlflow-auto 