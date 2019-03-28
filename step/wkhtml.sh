#--------------------------------------------------
# Install WkhtmltoPdf
#--------------------------------------------------

# Install libpng as WkhtmltoPdf depencency
sudo wget "http://security.ubuntu.com/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1.1_amd64.deb"
sudo dpkg -i libpng12-0_1.2.54-1ubuntu1.1_amd64.deb

# Clone WkhtmltoPdf
WKHTMLTOX_X64=https://builds.wkhtmltopdf.org/0.12.6-dev/wkhtmltox_0.12.6-0.20180618.3.dev.e6d6f54.trusty_amd64.deb
WKHTMLTOX_X32=https://builds.wkhtmltopdf.org/0.12.6-dev/wkhtmltox_0.12.6-0.20180618.3.dev.e6d6f54.trusty_i386.deb

if [ $INSTALL_WKHTMLTOPDF = "True" ]; then
  echo -e "\n---- Install wkhtml and place shortcuts on correct place for ODOO 12 ----"
  #pick up correct one from x64 & x32 versions:
  if [ "`getconf LONG_BIT`" == "64" ];then
      _url=$WKHTMLTOX_X64
  else
      _url=$WKHTMLTOX_X32
  fi
  sudo wget $_url
  sudo gdebi --n `basename $_url`

  sudo rm /usr/bin/wkhtmltopdf 
  sudo rm /usr/bin/wkhtmltoimage

  sudo ln -s /usr/local/bin/wkhtmltopdf /usr/bin
  sudo ln -s /usr/local/bin/wkhtmltoimage /usr/bin
else
  echo "Wkhtmltopdf isn't installed due to the choice of the user!"
fi
