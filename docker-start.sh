#!/bin/bash
# 
# 
# Author: alex
# Created Time: 2019年08月29日 星期四 21时18分24秒
docker rm -f ibbd-hrnet
docker run  -u $(id -u):$(id -g) --rm -ti --runtime=nvidia \
    -p 20950:20950 \
    --name ibbd-hrnet \
    -v `pwd`:/ibbd-hrnet \
    -w /ibbd-hrnet \
    registry.cn-hangzhou.aliyuncs.com/ibbd/pose:hrnet \
    /bin/bash
