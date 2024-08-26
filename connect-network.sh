#Network connection

# replace existing network file with new one
sudo mv /etc/network/interfaces /etc/network/interfaces.orig
sudo mv ./interfaces /etc/network/interfaces

# reboot network 
sudo systemctl restart networking



