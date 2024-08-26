#!/bin/bash

# connect wifi
nmcli device wifi connect "YourNetworkSSID" password "YourNetworkPassword"

# view connections
nmcli connection show

# Delete existing connection
nmcli connection delete "YourNetworkSSID"