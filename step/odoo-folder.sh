#--------------------------------------------------
# Setup Folder Structure
# - Opionated Folder Structure specified for Arkademy Training
#--------------------------------------------------

echo -e "\n---- Setup Folder Structure in $THIS_USER for Odoo Development----"
echo -e "\n----  $ODOO_SOURCE_DIRECTORY----"


echo -e "\n---- Create Source Code directory ----"
sudo mkdir $ODOO_SOURCE_DIRECTORY
sudo chown $THIS_USER:$THIS_USER $ODOO_SOURCE_DIRECTORY

echo -e "\n---- Create Config directory ----"
sudo mkdir $ODOO_CONFIG_DIRECTORY
sudo chown $THIS_USER:$THIS_USER $ODOO_CONFIG_DIRECTORY

echo -e "\n---- Create Custom Modules directory ----"
sudo mkdir $ODOO_DEVELOPMENT_DIRECTORY
sudo chown $THIS_USER:$THIS_USER $ODOO_DEVELOPMENT_DIRECTORY
