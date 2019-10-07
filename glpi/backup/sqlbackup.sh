#! /bin/bash
user=""       # Database user
db=""          # Database name
mdp=""        # Databaser password
BASE="/usr/share/glpi" # GLPI script location
DBVER="9.4.4"          # GLPI version
DATESTAMP=$(date +%Y-%m-%d)
# Backup server
buser="" # Backup server user
bsite="" # Backup server name/ip
bdir="/share/MD0_DATA/Backups/glpi" # Backup folder
delday="91" # Number of backupo clearing days

# Dump bases GLPI
mysqldump -u"${user}" -p"${mdp}" --single-transaction "${db}" | gzip > "${BASE}"/files/_dumps/glpi-"${DBVER}"-"${DATESTAMP}".sql.gz
nice -n +17 rsync -av "${BASE}"/files/_dumps/ "${buser}"@"${bsite}":"${bdir}"
find "${BASE}"/files/_dumps/  -type f -mtime +"${delday}" -exec rm {} \;
