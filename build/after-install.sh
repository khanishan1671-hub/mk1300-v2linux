#!/bin/bash
# Install the udev rule for hidraw devices (MK1300 keyboard)
if [ -f /opt/GamingWithIshan/resources/99-mk1300.rules ]; then
    cp /opt/GamingWithIshan/resources/99-mk1300.rules /etc/udev/rules.d/
    udevadm control --reload-rules || true
    udevadm trigger || true
    echo "MK1300: udev rule installed. Unplug and replug your keyboard."
fi
exit 0
