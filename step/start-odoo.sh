#--------------------------------------------------
# Starting Odoo
#--------------------------------------------------

echo -e "\n---- Start Odoo $OE_VERSION ----"
python3 $ODOO_SOURCE_DIRECTORY/$OE_VERSION/odoo-bin



#--------------------------------------------------
# Congrats Message
#--------------------------------------------------

echo "-----------------------------------------------------------"

echo "Done! The Odoo server is up and running. Specifications:"
echo "Port: $OE_PORT"
echo "User service: $THIS_USER"
echo "User PostgreSQL: $THIS_USER"
echo "Code location: $ODOO_SOURCE_DIRECTORY/$OE_VERSION/"