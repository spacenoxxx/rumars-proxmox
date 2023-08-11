#!/bin/bash

# Create and save the modify_network.sh script
cat <<EOF > /etc/network/modify_network.sh
#!/bin/bash

file_path="/etc/network/interfaces"
sed -i '/iface vmbr0/ s/static/dhcp/' \$file_path
sed -i '/iface vmbr0 inet dhcp/,+2 {/address/d; /gateway/d}' \$file_path
touch /var/run/interface_modified.flag
EOF

# Make the script executable
chmod +x /etc/network/modify_network.sh

# Create and save the systemd service
cat <<EOF > /etc/systemd/system/modify_interface_and_reboot.service
[Unit]
Description=Modify interface settings and reboot once
ConditionPathExists=!/var/run/interface_modified.flag

[Service]
Type=oneshot
ExecStart=/etc/network/modify_network.sh

[Install]
WantedBy=multi-user.target
EOF

# Reload systemd daemon and enable the service
systemctl daemon-reload
systemctl enable modify_interface_and_reboot.service
systemctl start modify_interface_and_reboot.service

# Inform the user of completion
echo "Setup completed. The modify_interface_and_reboot service has been enabled."

echo "Rebooting.."

sleep 5

reboot
