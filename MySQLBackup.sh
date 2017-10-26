#!/bin/bash
# MySQL Backup
# Backup Filename
FILENAME="backup_$(date +%Y%m%d_%H%M%S).sql.zip"
# Backup & Compress
mysqldump -uMYSQL_USER -pMYSQL_PASSWORD MYSQL_DATABASE_NAME | zip -P ZIP_PASSWORD > /home/backup/mysql/$FILENAME
# Keep only the last 30 days backup"
find /home/backup/mysql/* -mtime +30 -exec rm {} \;
# FTP Transfert
wput -u /home/backup/mysql/$FILENAME ftp://FTP_USER:FTP_PASSWORD@FTP_HOST
# END
