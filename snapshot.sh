#!/bin/sh

YMD=`date +%Y%m%d`

if [ "$1" = init ]
then
    PATH_DUMP=./dump/init
    TABLE_PATH=./
    filename=./table-snapshot-init
else
    # dumpファイルを保存する場所
    PATH_DUMP=./dump
    TABLE_PATH=./
    filename=./table-snapshot
fi

DATABASE=
USER=
PASSWD=

for table in `cat ${TABLE_PATH}${filename}`
do
    mysqldump -u${USER} -p${PASSWD} ${DATABASE} ${table} --add-drop-table > ${PATH_DUMP}/${table}_dump.sql
    echo ${table} "をdumpしました"
done
