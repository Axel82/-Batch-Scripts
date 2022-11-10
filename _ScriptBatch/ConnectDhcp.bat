@ECHO OFF

ECHO Set new IpV4
set "ethernetCard=Ethernet"
set ipAddress=192.168.249.156
set subnetMask=255.255.255.240

netsh interface ipv4 set address name="%ethernetCard%" source=dhcp

ECHO Ethernet card named %ethernetCard% will be desactivated
netsh int set int name=%ethernetCard% admin=disabled
TIMEOUT /T 5 /NOBREAK
ECHO Ethernet card named %ethernetCard% will be activated
netsh int set int name=%ethernetCard% admin=enabled
TIMEOUT /T 5 /NOBREAK