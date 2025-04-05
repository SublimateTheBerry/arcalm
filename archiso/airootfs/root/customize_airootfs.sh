#!/bin/bash

echo '[[ $(tty) == "/dev/tty1" ]] && startx' >> /etc/skel/.bash_profile

cat > /etc/skel/.xinitrc << EOF
#!/bin/sh
exec calamares -d
EOF

ln -s /usr/lib/systemd/system/sddm.service /etc/systemd/system/display-manager.service
ln -s /usr/lib/systemd/system/NetworkManager.service /etc/systemd/system/multi-user.target.wants/