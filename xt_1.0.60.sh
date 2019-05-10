#!/bin/bash
#
apt-get purge `dpkg -l | grep php| awk '{print $2}' |tr "\n" " "`
apt-get install software-properties-common
add-apt-repository ppa:ondrej/php
apt-get update && apt-get upgrade -y
apt-get install lsb-release nscd curl php5.6 php5.6-mysql php5.6-cli php5.6-curl unzip -y && apt-get install php5.6-mcrypt && phpenmod mcrypt
service apache2 restart
wget http://downloads.sourceforge.net/project/iptv-md/xtream/www_dir.tar.gz -O /tmp/www_dir.tar.gz
#
if [ -d /var/www/html ];
then
    echo "/var/www/html/ directory exists."
	tar -zxvf /tmp/www_dir.tar.gz -C /var/www/html/
else
    echo " "
	if [ -d /root/www/ ];
	then
    echo "/var/www/ directory exists."
    	tar -zxvf /tmp/www_dir.tar.gz -C /var/www/
else
    echo "No Webserver installed?"

fi

fi
#
wget http://127.0.0.1/downloads/iptv_panel_pro.zip -O /tmp/iptv_panel_pro.zip
wget http://127.0.0.1/downloads/install_iptv_pro.zip && unzip install_iptv_pro.zip
#
php install_iptv_pro.php
#
echo " "
echo "####################################################################################"
echo " "
echo "In order to not be blacklisted, we are redirecting domains."
echo " "
echo 1 > /proc/sys/net/ipv4/ip_forward
#
/sbin/iptables -t nat -I OUTPUT --dest 149.202.206.51/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 123.103.255.80/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 62.210.244.112/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 185.73.239.0/28 -j DNAT --to-destination 127.0.0.1
#
apt-get install iptables-persistent
#
echo " "
echo "####################################################################################"
echo " "
echo "Installation is complete. Cleaning up the setup."
echo " "
rm /root/install_iptv_pro.php
rm /root/install_iptv_pro.zip
rm /root/xt_1.0.60.sh
echo " "
echo "####################################################################################"
echo " "
echo "Xtream Codes 1.0.60 NULLED by github.com/FirezYT/"
echo " "
echo "For a proper completion, please restart."
echo " "
      read -p "Reboot now? (y/n)" CONT
      if [ "$CONT" == "y" ] || [ "$CONT" == "Y" ]; then
      reboot
      fi
