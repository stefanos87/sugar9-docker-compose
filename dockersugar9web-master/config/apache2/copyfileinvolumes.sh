#!/bin/bash

cd /var/www/html

echo "avvio"

FILE=/var/www/html/info.php
if [ -f "$FILE" ]; then
    echo "$FILE exist"
else 
   echo "copia"
   cd /sugarsource
   cp -pfr * /var/www/html
   echo "fine"
   cd /var/www/html
fi

apachectl -D FOREGROUND