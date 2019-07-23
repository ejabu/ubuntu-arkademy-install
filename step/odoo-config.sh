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
printf 'admin_passwd = %s\n' $OE_SUPERADMIN >> $CONFIG_FILE
printf 'xmlrpc_port = %s\n' $OE_PORT >> $CONFIG_FILE
printf 'addons_path=\n' >> $CONFIG_FILE
printf '\t%s/devel/toko1\n' $ODOO_DEVELOPMENT_DIRECTORY >> $CONFIG_FILE
printf '\t%s/devel/toko2\n' $ODOO_DEVELOPMENT_DIRECTORY >> $CONFIG_FILE

echo -e "Changing Permission"
sudo chown $THIS_USER:$THIS_USER $CONFIG_FILE
sudo chmod 640 $CONFIG_FILE
