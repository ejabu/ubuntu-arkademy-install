#--------------------------------------------------
# Odoo Config File
# - Opionated configs specified for Arkademy Training
#--------------------------------------------------


CONFIG_FILE="$ODOO_CONFIG_DIRECTORY/$ODOO_CONFIG_FILE.conf"
echo -e "Create Config File in $CONFIG_FILE"
touch $CONFIG_FILE

echo -e "Create Content"
printf '[options] \n' >> $CONFIG_FILE
printf '# Setiap config file untuk Odoo memerlukan [options] di awal \n' >> $CONFIG_FILE
printf 'admin_passwd = ${OE_SUPERADMIN}\n' >> $CONFIG_FILE
printf 'xmlrpc_port = ${OE_PORT}\n' >> $CONFIG_FILE
printf '# addons_path = ${ODOO_DEVELOPMENT_DIRECTORY}/ark-dev/basic,${ODOO_DEVELOPMENT_DIRECTORY}/ark-dev/intermediate\n' >> $CONFIG_FILE

echo -e "Changing Permission"
sudo chown $THIS_USER:$THIS_USER $CONFIG_FILE
sudo chmod 640 $CONFIG_FILE
