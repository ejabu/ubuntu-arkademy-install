#--------------------------------------------------
# Install PostgreSQL Server
#--------------------------------------------------

echo -e "\n---- Install PostgreSQL Server ----"
sudo apt-get install postgresql -y

echo -e "\n---- Setup $THIS_USER as a PostgreSQL User  ----"
sudo su - postgres -c "createuser -s $THIS_USER" 2> /dev/null || true
