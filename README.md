# Xtream Codes v1.0.60 (NULLED)

An English guide to install Xtream Codes panel for free.

We used AWS (Amazon Web Services) for the panel. 
If you have problems with other vps services , contact me on Discord @ Firez#7353 .

We recommend Ubuntu 14.04 LTS for the best experience!

## Installation (Ubuntu / Debian)

### First, update and upgrade your OS with these commands.

> sudo apt-get update

> sudo apt-get upgrade -y

### Then, add the PHP repository and install all required packages.

> sudo add-apt-repository ppa:ondrej/php

> sudo apt-get update

> sudo apt-get install apache2 lsb-release nscd curl php5.6 php5.6-mysql php5.6-cli php5.6-curl php5.6-mcrypt unzip -y

### After that, you need to enable MCrypt and restart Apache.

> sudo phpenmod mcrypt

> sudo service apache2 restart

### Finally, you need to move the files from the repository in to the server accordingly and etc...

> sudo su

> Move iptv_panel_pro.zip to /tmp

> Move install_iptv_pro.php to /root

> sudo chmod 7777 /var/www/html/

> Move the modules, downloads, and licences folder to /var/www/html/

> cd /root

>php install_iptv_pro.php

### Setup

> Your license key is licenca1 .

Enter in any admin password and MySql password.

> Use port 8000 for it to work.

### Avoid Detection

In order for the license to not be caught as a cracking license, you need to move this file.

> Move xtreamcodes_pro_panel file to the /etc/init.d directory.

If you are not able to move the file there, so just use nano and edit the file.

## Installation (CentOS)

Coming soon...

# Xtream Codes v1.0.60 Alternate Setup (NULLED)

### Execute these commands to start the setup.

You must use the root account or problems may occur.

> wget https://raw.githubusercontent.com/FirezYT/xtream-codes-nulled/master/xt_1.0.60.sh && chmod a+x xt_1.0.60.sh && ./xt_1.0.60.sh
