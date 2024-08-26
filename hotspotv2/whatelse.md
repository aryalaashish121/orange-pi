# enable ipv4 forwarding
sudo vim /etc/sysctl.conf

#Uncomment the following line:
net.ipv4.ip_forward=1

#Apply the changes
sudo sysctl -p


# Verify /etc/dhcpcd.conf Configuration: Ensure that the /etc/dhcpcd.conf file contains the correct settings for wlan0. Open the file and check the configuration:

sudo vim /etc/dhcpcd.conf

```
interface wlan0
static ip_address=192.168.10.1/24
nohook wpa_supplicant
```



#start services
Enable and start the services:
sudo systemctl unmask hostapd
sudo systemctl enable hostapd
sudo systemctl start hostapd
sudo systemctl enable dnsmasq
sudo systemctl start dnsmasq

# assign ip address to wlan0
sudo ifconfig wlan0 192.168.10.1 netmask 255.255.255.0
Sudo ifconfig wlan0

# Ensure No Conflicting Services: Ensure that no other service is assigning a dynamic IP address to wlan0. This might include NetworkManager or similar services. If you have NetworkManager installed, you might need to disable it for wlan0:

sudo systemctl stop NetworkManager
sudo systemctl disable NetworkManager

sudo reboot

