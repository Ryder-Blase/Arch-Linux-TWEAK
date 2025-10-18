#!/bin/bash

set -e

sudo tee /etc/systemd/system/pci-latency-gaming.service > /dev/null << 'EOF'
[Unit]
Description=Set PCI Express latencies for gaming
After=multi-user.target

[Service]
Type=oneshot
ExecStart=/bin/bash -c 'setpci -v -s "*:*" latency_timer=20; setpci -v -s "0:0" latency_timer=0; setpci -v -d "*:*:04xx" latency_timer=80'
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl enable pci-latency-gaming.service
sudo systemctl daemon-reexec
sudo systemctl start pci-latency-gaming.service

sudo tee /etc/drirc > /dev/null << 'EOF'
<driconf>
   <device>
       <application name="Default">
           <option name="vblank_mode" value="0" />
       </application>
   </device>
</driconf>
EOF
