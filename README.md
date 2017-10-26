# MySQLBackup
> Backup MySQL Database
> Setup all the variables

- FILENAME : "backup_$(date +%Y%m%d_%H%M%S).sql.zip"\n
- MYSQL_USER : root\n
- MYSQL_PASSWORD : root\n
- MYSQL_DATABASE_NAME : test
- ZIP_PASSWORD : p@ssword
- FTP_USER : leo\n
- FTP_PASSWORD : leo\n
- FTP_HOST : 192.168.0.1

# Give the shell script the correct permission
chmod 755 MySQLBackup.sh

# Cronjob
> Add new cron job to crontab:

> crontab –e 

> 0 0 * * * /home/scripts/MySQLBackup.sh

> the MySQLBackup.sh shell script will be run exactly execute at midnight every night. adjust this as desired.

