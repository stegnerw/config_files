# Install dependencies
sudo apt install --reinstall git dkms build-essential linux-headers-$(uname -r)

# Clone git repo
DRIVER_DIR=$HOME/git/rtl8821ce
rm -rf $DRIVER_DIR
git clone https://github.com/tomaspinho/rtl8821ce $DRIVER_DIR
cd $DRIVER_DIR

# Set file permissions and install
chmod +x dkms-install.sh
chmod +x dkms-remove.sh
sudo ./dkms-install.sh
