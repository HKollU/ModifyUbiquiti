#Run this using "source build.sh" or ". build.sh"
#!/bin/bash
curl –O http://ftp.us.debian.org/debian/pool/main/e/easy-rsa/easy-rsa_2.2.2-1_all.deb #This downloads the package needed to make RSA certificates
sudo dpkg -i easy-rsa_2.2.2-1_all.deb #install the package
usr/share/easy-rsa/vars #Run the vars program which we will use to make our certificates
usr/share/easy-rsa/clean-all
usr/share/easy-rsa/build-ca # Give a common name such as “OpenVPN CA”
usr/share/easy-rsa/build-key-server server
usr/share/easy-rsa/vars/build-dh
mkdir usr/share/easy-rsa/config/auth/keys/
cp usr/share/easy-rsa/
#--Incomplete, continue following instructions from PDF--
