# When ssh connection is established, wifi connection in the host device gets disconnected
# This could be because of the power save mode on the host device
# Do the following to

#create a file in 
sudo vim /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf

# Add following
[connection]
wifi.powersave = 2


# Make these settings in sshd config
/etc/ssh/sshd_config

# Uncomment the following line
ClientAliveInterval 60
ClientAliveCountMax 3

# After editing sshd_config, restart the sshd 
sudo systemctl restart sshd



## If the above didn't work; use this command to bring connection manually
nmcli device set wlan0 managed yes
nmcli radio wifi on


# Check the available connection list
nmcli device wifi list