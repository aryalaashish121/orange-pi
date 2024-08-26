
#update/install 
sudo apt update
sudo apt install hostapd dnsmasq

# copy new hostapd config file
mv /etc/hostapd/hostapd.conf /etc/hostapd/hostapd.conf.original
cp ./hostapd.conf /etc/hostapd/hostapd.conf

#Daemon conf location
DAEMON_CONF="/etc/hostapd/hostapd.conf"


# Edit or create /etc/dnsmasq.conf
mv /etc/dnsmasq/hostapd.conf /etc/dnsmasq/hostapd.conf.orig
cp dnsmasq.conf /etc/dnsmasq/hostapd.conf


# Update /etc/network/interfaces or use netplan if applicable, 
#to configure the wlan0 interface. Ensure it's set to use static IP:
mv /etc/network/interfaces /etc/network/interfaces.orig
cp interfaces /etc/network/interfaces

#enable
sudo systemctl enable hostapd
sudo systemctl enable dnsmasq
sudo systemctl start hostapd
sudo systemctl start dnsmasq

#check status
sudo systemctl status hostapd
sudo systemctl status dnsmasq