sudo tee /etc/systemd/system.conf > /dev/null <<'EOF'
[Manager]
DefaultTasksMax=8192
DefaultTimeoutStartSec=5s
DefaultTimeoutStopSec=5s
EOF
