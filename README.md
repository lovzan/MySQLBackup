# MySQLBackup
Backup MySQL Database
setup all the variables


FILENAME : "backup_$(date +%Y%m%d_%H%M%S).sql.zip"
MYSQL_USER : root
MYSQL_PASSWORD : root
MYSQL_DATABASE_NAME : test

ZIP_PASSWORD : p@ssword

FTP_USER : leo
FTP_PASSWORD : leo
FTP_HOST : 192.168.0.1

# Give the shell script the correct permission
chmod 755 MySQLBackup.sh

# Cronjob
Add new cron job to crontab:
crontab –e 
0 0 * * * /home/scripts/MySQLBackup.sh
the MySQLBackup.sh shell script will be run exactly execute at midnight every night. adjust this as desired.

