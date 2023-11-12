virt-install --virt-type=kvm --name=esxi \
--ram 4096 --vcpus=4 \
--virt-type=kvm --hvm \
--cdrom /home/shane/Documents/VMware-VMvisor-Installer-7.0U3n-21930508.x86_64.iso \
--network network:default,model=vmxnet3 \
--graphics vnc --video qxl \
--disk pool=default,size=32,sparse=true,bus=sata,format=qcow2 \
--boot cdrom,hd --noautoconsole --force \
--cpu host-passthrough --os-variant linux2020
