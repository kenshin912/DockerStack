#!/bin/bash

ROOT_PATH=/home
PATH=(
    'wwwroot/default'
    'wwwlogs/openresty wwwlogs/nginx wwwlogs/php wwwlogs/mysql wwwlogs/redis'
    #'config/openresty/vhosts config/openresty/ssl config/nginx/vhosts config/nginx/ssl config/php config/mysql config/redis config/supervisor'
    'data/mysql data/redis'
)

PATH_LEN=${#PATH[*]}

for (( i=0;i<${PATH_LEN};i++ ));
do
    DIRECTORY_LIST=${PATH[$i]}
    for DIRECTORY in ${DIRECTORY_LIST[@]}
    do
        mkdir -p ${ROOT_PATH}/${DIRECTORY}
    done
done

cp -r ./config/* ${ROOT_PATH}/config/



exit

