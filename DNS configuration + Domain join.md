# switch to root
sudo su

# configure Domain Controller as DNS server in /etc/resolve.conf (change DomainController_IP)
sed -i 's/^nameserver.*/nameserver DomainController_IP/' /etc/resolv.conf

# make install_packages.sh executable
chmod +x install_packages.sh

# run install_packages.sh
./install_packages.sh

# test connection to Domain Controller (change DomainController_FQDN)
realm -v discover DomainController_FQDN

# join domain (use credentials of a domain user that has privileges to join computers to a domain)
relam join -U username DomainController_IP