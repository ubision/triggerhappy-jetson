#!/bin/sh
sudo cp ./systemd/triggerhappy* /lib/systemd/system/
sudo cp ./udev/triggerhappy-udev.rules /etc/udev/rules.d/99-triggerhappy-udev.rules
sudo systemctl enable triggerhappy
sudo systemctl start triggerhappy
sudo udevadm control --reload
