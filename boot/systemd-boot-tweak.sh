sudo tee /etc/systemd/system.conf > /dev/null <<'EOF'
[Manager]
DefaultTasksMax=8192
DefaultTimeoutStartSec=15s
DefaultTimeoutStopSec=15s
EOF
