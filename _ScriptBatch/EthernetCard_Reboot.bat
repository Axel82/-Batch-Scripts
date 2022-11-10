@ECHO OFF

set nameCard="Ethernet 4"

ECHO Ethernet card named %nameCard% will be desactivated
netsh int set int name=%nameCard% admin=disabled
TIMEOUT /T 5 /NOBREAK
ECHO Ethernet card named %nameCard% will be activated
netsh int set int name=%nameCard% admin=enabled
TIMEOUT /T 5 /NOBREAK

set nameCard="Wi-Fi"

ECHO Ethernet card named %nameCard% will be desactivated
netsh int set int name=%nameCard% admin=disabled
TIMEOUT /T 5 /NOBREAK
ECHO Ethernet card named %nameCard% will be activated
netsh int set int name=%nameCard% admin=enabled
TIMEOUT /T 5 /NOBREAK