#!/usr/bin/env bash
# It runs once per month, no rsync and cleanup (main script do it daily)
# Tar-ed to *.xz, so it is not displayed at GLPI backup/restore feature
BASE="/usr/share/glpi" # GLPI script location
DBVER="9.4.5" # GLPI version
DATESTAMP=$(date +%Y-%m-%d)

# Dump files GLPI
tar cvfJ "${BASE}"/files/_dumps/glpi-"${DBVER}"-"${DATESTAMP}"-files.tar.xz --exclude="_*" "${BASE}"/files/
tar cvfJ "${BASE}"/files/_dumps/glpi-"${DBVER}"-"${DATESTAMP}"-plugins.tar.xz "${BASE}"/plugins/
