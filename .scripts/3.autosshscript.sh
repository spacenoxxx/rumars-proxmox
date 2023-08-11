#!/bin/bash

# Step 1: Install autossh
apt update
apt install autossh -y

# Step 2: Prompt user for SSH Key location

# Embedding the SSH private key directly
cat > /root/.ssh/rumars_private_key <<EOF
-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAACFwAAAAdzc2gtcn
NhAAAAAwEAAQAAAgEAnq/5ZoZ4COzjuuC21yiF+E7lSr+4JUqZgeduaR1tG/EmEBvHrUUV
nyDIquSZ6sMbDxWjfqvarynMgePBF7bXi2f8Ulehlxa16W8OGYJ+XrFDbSv4maMqfCXje0
QFdajllq2Z7KfUZEv3JaPtJucRfpGcQdhkUeshXYEVV8R/yEORT3wdRVvZ3Q8RNTpaoYl8
FAJL3m8klxaHn+0G35tJj0ZR996S5Xf4rl8Gg7HOitANgbZYFjyRJ7nglkKllh8GI8KEvk
PbKKTlsjGhDOic5E7eesUFdj6wbYxN8H1ZNOl7l72jYWkdK18stkGjLFcoK5iPxRLZPFky
i6FeA4vlw2SyZAInMpyL/oL3kbN476zm6CCE935Jeomm1kllEULtXEmmEttTS8Sj/U/hUX
zvJCEiZX1pjpZAPJX+X57ZkMWJ4u8qMaC/ljLQtKP9EKHNkVKBYIatodQd0bpPpZbajYwp
Uz0SnIDyLzFG3LVqdXN8+TFYGzP1RGwGf5Vjh6ZwzY9sHtQtHyWEpFpWVrJhCiCLnikKNG
Zi2gvWk+rJgig2C24+hRYkw/7zZbD5U+AY22apZ/sPBUqpRVWD15N5G6ztUEjISPaPCtXN
E7a9dCRpLzG9BMHiIxTLWLW18da0wjzI1zRAh4LiKkB8aTgkxnPIjhRlNwZS1Og+8HAbb4
8AAAc4zN8Ue8zfFHsAAAAHc3NoLXJzYQAAAgEAnq/5ZoZ4COzjuuC21yiF+E7lSr+4JUqZ
geduaR1tG/EmEBvHrUUVnyDIquSZ6sMbDxWjfqvarynMgePBF7bXi2f8Ulehlxa16W8OGY
J+XrFDbSv4maMqfCXje0QFdajllq2Z7KfUZEv3JaPtJucRfpGcQdhkUeshXYEVV8R/yEOR
T3wdRVvZ3Q8RNTpaoYl8FAJL3m8klxaHn+0G35tJj0ZR996S5Xf4rl8Gg7HOitANgbZYFj
yRJ7nglkKllh8GI8KEvkPbKKTlsjGhDOic5E7eesUFdj6wbYxN8H1ZNOl7l72jYWkdK18s
tkGjLFcoK5iPxRLZPFkyi6FeA4vlw2SyZAInMpyL/oL3kbN476zm6CCE935Jeomm1kllEU
LtXEmmEttTS8Sj/U/hUXzvJCEiZX1pjpZAPJX+X57ZkMWJ4u8qMaC/ljLQtKP9EKHNkVKB
YIatodQd0bpPpZbajYwpUz0SnIDyLzFG3LVqdXN8+TFYGzP1RGwGf5Vjh6ZwzY9sHtQtHy
WEpFpWVrJhCiCLnikKNGZi2gvWk+rJgig2C24+hRYkw/7zZbD5U+AY22apZ/sPBUqpRVWD
15N5G6ztUEjISPaPCtXNE7a9dCRpLzG9BMHiIxTLWLW18da0wjzI1zRAh4LiKkB8aTgkxn
PIjhRlNwZS1Og+8HAbb48AAAADAQABAAACAEj+FgDIcrdcS8Y+riva+oDEvai79lbE8UZ1
L27Pd8xGCOWY+aikYfUvzc352CjJ9QzjvbA7GZy/48+NdVjUpGH+A2zW3T/T1PpauIgYY8
tny2WQt8nn6Vdw0Cn3mHFOLsk38lkOu94kqTrZo/DkkcH/9Xm+MSsTNmY9xZT5EHQMTG9c
3lP0k4qg7x/mRyENzhKgGcjno9ORq/Huw94gHl52kKas7TH7FNsUX7k9FQ359HSJbQxRcM
1urTVA08zxWVAing+sw8b2zqdAN93ps507ABBFxyTkYiAJzSIFbn6ttUmPk/LvOFkmbrkp
CQcQ0iv3gY47hMxDFUJwCAAmnhkgomCLbz7QMPQnwNA367kiJ7zBklLMmV4PVLmzA0iN4+
f79xvmGH9vyUZ+LpGgxnbnfLXfp7UYzUbLXrdPSn5pp8t3c5WwPkXHz/qRXrKGLfG5rLQV
1CyQsPH8AwS1mnlcgZMygPyxovK6d23ZU98Y+qkTyStI9+S5YxaR3+VdMl64d3O/zozcOM
deFPmXtnEJYfaaL3ekBANSibGmG5MKiTVPf/TbfrmpBgFmZGquiuXhbvGz/AgnVmFQIimU
2GiiOKEPncBcnUEYZH1z8VbM+fhuO7kGRmI8GUNC+lJiCrsZC9iKtl//7OQHIMiqcYLZ/t
FPdS9RI3hSAzNlIGfRAAABACnnIVs0V/N+sUaknHhpjWmI2k0KL/7XHZ1lN7YelV1e+FfX
RtoKSutGS4c7WOJDzlJDbD5zslPD0KCV2l28ivCpqxU8AwRBNw9Av0FL2KeW3qfcpu2uO+
ML6ShfVDfEwmEWatG4UZhnFzCWxgV/6UTmFkc+z/A7J62sd8nZiw//7SfOMrdJY6wek1Dp
NxvPjluVDM4O+a2Nmkex/4U6b18u0wKl8gWi4G5Y2/YfzLd+4HbmsGjnd7OWJs+yL1azRW
FDQsjIXD8GBhAmmyoqn3je/GoQFuF5iISAgFbryJaVhkPd4qHXTK550uA4nRSNUPbv/+Xz
53/8xJmuAT0jmwkAAAEBAM6RdBZs/k/FLrVwXmz9I5r7gJpjlRNc2U9pX8D5Jfv2Abw+wv
LTjpHZsYFSniwpfXEwRPXOD1Nru7wkBhX0Sc+JVpmmQDslEaszxdPVmSNJjI52eDDaKK54
85W/aEKQhXmjW2/cfgU62FRKCe+yd5Hsy1IkAqecjY4E1rZh8iZkiZMHoLrQjUmN3JmC6z
jZ7Vd6dcqkPGB0mV9YRMmK4aw3oLxkdH92lTnAH2wWJN0hHFK9C4ahMR9D5xg8ek/QMrHL
l49B/Kwt00DhEdHB5V7J9/g8mdBXwFrX80xZ2HeccR/arrJo9heUtYVOFs1oeEFf8BdFT7
OaS8td3YyyKp8AAAEBAMSpTXR0+nxk4JpRBl8BUZa7yz6eC8b3DXQ3wYvW/MpxJRhrUT1e
0JIhNxHEmyCAfmnn5kMSI4Uzl+ORXvclhdXlVG6xtc8X5liGrziQF0ZlRyGDE+U8KCVWlN
bHk6agon5kHuycC1y1y32oXKyTaqvHvimTXDVPG6qm3cGbTon9f5kRItYFROJU+F0LYsXe
HdpI6+dFF80JRqkLokHFm7k7mYkgHiNi1bYIK0PSvxgMgHmjs4EQNuVlGW5/3FllQfB54W
INhvJqyCAT5ovLr3bLp+nmMaWjd5VOow7p17uKHnE4NpdG5fXNSeWJgP18ohHNN32PVLqc
f8adpIaehREAAAAAAQID
-----END OPENSSH PRIVATE KEY-----

EOF
chmod 600 /root/.ssh/rumars_private_key


read -p "Enter monitor port (default: 20002): " MONITOR_PORT
MONITOR_PORT=${MONITOR_PORT:-20002}

read -p "Enter tunnel port (default: 30002): " TUNNEL_PORT
TUNNEL_PORT=${TUNNEL_PORT:-30002}

read -p "Enter localhost port (default: 22): " LOCALHOST_PORT
LOCALHOST_PORT=${LOCALHOST_PORT:-22}

read -p "Enter remote host (default: dashboard.rumars.naarang.com): " REMOTE_HOST
REMOTE_HOST=${REMOTE_HOST:-dashboard.rumars.naarang.com}

# Step 3: Create create_autossh_service.sh and save it under /root
cat > /root/create_autossh_service.sh << EOF
#!/bin/bash

# Parse command-line arguments
while (( "\$#" )); do
  case "\$1" in
    --monitor-port=*)
      MONITOR_PORT="\${1#*=}"
      shift
      ;;
    --tunnel-port=*)
      TUNNEL_PORT="\${1#*=}"
      shift
      ;;
    --localhost-port=*)
      LOCALHOST_PORT="\${1#*=}"
      shift
      ;;
    --remote-host=*)
      REMOTE_HOST="\${1#*=}"
      shift
      ;;
    *)
      echo "Error: Invalid argument"
      exit 1
  esac
done

# Create the autossh.start script
cat > /etc/init.d/autossh.start << EOL
#!/bin/sh

case "\\\$1" in
    start)
	ssh-keyscan -H $REMOTE_HOST >> /root/.ssh/known_hosts
        autossh -M \$MONITOR_PORT -v -N -i /root/.ssh/rumars_private_key -R 127.0.0.1:\$TUNNEL_PORT:localhost:\$LOCALHOST_PORT rumars@\$REMOTE_HOST
        ;;
    stop)
        killall autossh
        ;;
    *)
        echo "Usage: \\\$0 {start|stop}"
        exit 1
esac

exit 0
EOL

# Make the autossh.start script executable
chmod +x /etc/init.d/autossh.start

# Create the autossh.service systemd service file
cat > /etc/systemd/system/autossh.service << EOL
[Unit]
Description=Autossh Service
After=network.target

[Service]
ExecStart=/etc/init.d/autossh.start start
ExecStop=/etc/init.d/autossh.start stop
Type=simple
Restart=on-failure
RestartSec=5s

[Install]
WantedBy=multi-user.target
EOL

# Reload the systemd daemon to apply the changes
systemctl daemon-reload

# Enable and start the autossh service
systemctl enable autossh
systemctl start autossh
EOF

# Step 4: Make it executable
chmod +x /root/create_autossh_service.sh

# Step 5: Execute the script with the parameters
#sudo su - -c "cd /root && ./create_autossh_service.sh --monitor-port=$MONITOR_PORT --tunnel-port=$TUNNEL_PORT --localhost-port=$LOCALHOST_PORT --remote-host=$REMOTE_HOST"

# Step 5: Execute the script with the parameters
su - -c "cd /root && ./create_autossh_service.sh --monitor-port=$MONITOR_PORT --tunnel-port=$TUNNEL_PORT --localhost-port=$LOCALHOST_PORT --remote-host=$REMOTE_HOST"

# Step 6: Check the status of the autossh service
service autossh status
# Step 6: Check the status of the autossh service
service autossh status
