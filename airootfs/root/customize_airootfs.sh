#!/bin/bash

# Auto-start X
echo '[[ $(tty) == "/dev/tty1" ]] && startx' >> /etc/skel/.bash_profile

# Calamares autostart
cat > /etc/skel/.xinitrc << EOF
#!/bin/sh
exec calamares -d
EOF

# Enable services
systemctl enable sddm NetworkManager