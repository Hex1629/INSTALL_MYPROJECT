
#!/bin/bash

# Check if the system has a hypervisor
if [ -d "/proc/sys/xen" ] || [ -d "/proc/sys/vmware" ] || [ -d "/proc/sys/qemu" ]; then
    echo "Running on a VPS."
    apt install python-is-python3
else
    echo "Not running on a VPS. Exiting..."
    exit 1
fi
