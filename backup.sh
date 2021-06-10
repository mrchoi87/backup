#!/bin/bash

COMPANY_NAME="Barun"
TODAY=`date +%Y%m%d`
BACKUP_DIR=/home/pi/backup
DEST_SERVER_DIR=/home/mrchoi87/backup

#########################################################
# 기존 파일 있으면 지우기
#########################################################
cd ${BACKUP_DIR}
rm -f *
#########################################################
# MySQL 덤프
#########################################################
echo "Dumping MySQL database..."
mysqldump -ufarmos -pfarmosv2@ farmos > ${BACKUP_DIR}/${COMPANY_NAME}_farmos_${TODAY}.sql
echo "${COMPANY_NAME}_mysqldb_backup_${TODAY}.sql DB create !!\n\n"
sleep 1

#########################################################
# Secure FTP 백업
#########################################################
# 백업할 파일이 있는 디렉토리로 경로 변경
cd ${BACKUP_DIR}
echo "now ${BACKUP_DIR} backup doing !!\n\n"

FTP_HOST="121.137.95.121"

sftp -oPort=22 mrchoi87@${FTP_HOST} << EOF
cd ${DEST_SERVER_DIR}
mput *
exit
EOF

# 로컬 백업파일 삭제
cd ${BACKUP_DIR}
rm -f *

exit 0
