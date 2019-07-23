#--------------------------------------------------
# Clone Odoo from it's official Github repo
#--------------------------------------------------

echo -e "\n==== Installing ODOO Server ===="
sudo git clone --depth 1 --branch $OE_VERSION https://www.github.com/odoo/odoo $ODOO_SOURCE_DIRECTORY/$OE_VERSION


sudo chown -R $THIS_USER:$THIS_USER $ODOO_SOURCE_DIRECTORY/*
sudo chmod 775 -R $THIS_USER:$THIS_USER $ODOO_SOURCE_DIRECTORY/*

echo -e "\n==== Installing ODOO Requirements ===="

sudo pip3 install python3-ldap

# sudo pip3 install -r $ODOO_SOURCE_DIRECTORY/$OE_VERSION/requirements.txt
sudo pip3 install -r odoo-req/requirements.txt

