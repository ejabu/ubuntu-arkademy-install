#--------------------------------------------------
# Updating Linux
#--------------------------------------------------

echo -e "\n---- Update Server ----"
# universe package is for Ubuntu 18.x
sudo add-apt-repository universe
sudo apt-get update
# sudo apt-get upgrade -y
