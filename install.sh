#--------------------------------------------------
# Installation Parameter
#--------------------------------------------------

# OE_USER="odoo"
# OE_HOME="/$OE_USER"
# OE_HOME_EXT="/$OE_USER/${OE_USER}-server"

INSTALL_WKHTMLTOPDF="True"

# Set the default Odoo port (you still have to use -c /etc/odoo-server.conf for example to use this.)
OE_PORT="8069"

OE_VERSION="12.0"

OE_SUPERADMIN="admin"


THIS_USER="$(whoami)"
ODOO_BASE_DIRECTORY="$HOME/arkademy"
ODOO_DEVELOPMENT_DIRECTORY="$HOME/arkademy/devel"
ODOO_CONFIG_DIRECTORY="$HOME/arkademy/config"
ODOO_CONFIG_FILE="arkademy"
ODOO_SOURCE_DIRECTORY="$HOME/arkademy/source"


# Execution Scripts

# . ./step/update-linux.sh
# . ./step/postgresql.sh
# . ./step/python.sh
# . ./step/wkhtml.sh
# . ./step/odoo-folder.sh
. ./step/clone-odoo.sh
# . ./step/odoo-config.sh
# . ./step/start-odoo.sh

