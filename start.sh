#!/bin/bash 
CONTAINER="admin-mysql_db.1.jhmt04hxq732lvnr76m7ikzlv"
docker cp ./*.sql $CONTAINER:/tmp/BE_179976.sql 
docker cp ./skrypt.sh $CONTAINER:/tmp/skrypt.sh 
docker exec -it $CONTAINERchmod 777 /tmp/skrypt.sh
docker exec -it $CONTAINERchmod 777 /tmp/BE_179976.sql
docker exec -it $CONTAINER /bin/sh /tmp/skrypt.sh 
docker exec -it $CONTAINERrm /tmp/BE_179976.sql 
docker exec -it $CONTAINERrm /tmp/skrypt.sh
echo "KONIEC"
