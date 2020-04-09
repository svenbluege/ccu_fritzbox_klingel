# CCU - Fritzbox Klingel

Dieses kleine Script lässt die Telefone an der Fritzbox für ein paar Sekunden klingeln. 
Dazu kopiert man ```script/fritzbox_ring.sh``` nach ```/usr/local/addons/cuxd/extra```, legt die Dateirechte auf 0755 fest und erstellt ein Programm in der CCU. 
Der Aktor für die Scriptausführung ist ein CUxD-Gerät.

Viele Anleitungen beschreiben noch den Weg via /cgi-bin/webcm. Das funktioniert jedoch nicht mehr. 

Anwendung:

```su /usr/local/addons/cuxd/extra/fritzbox_ring.sh [Klingeldauer]```

![CCU Programm Screenshot](/docu/ccu-programm.jpg?raw=true "CCU Programm")

## Sources: 
http://chris.cnie.de/netzwerk/fritzbox.html

http://fritz.box:49000/x_voipSCPD.xml

https://avm.de/service/schnittstellen/

https://avm.de/fileadmin/user_upload/Global/Service/Schnittstellen/AVM_TR-064_first_steps.pdf

## Einrichtung CUxD-Aktor zur Scriptausführung
https://homematic-guru.de/homematic-automatisches-backup

## Voraussetzungen in der Fritzbox
- TR-064-Support ist aktiv ![](/docu/TR-064-support.jpg?raw=true "TR-064 Support")
- es gibt einen Benutzer, der das Rest zum Telefonieren hat ![](/docu/fritzbox_benutzer.jpg?raw=true "Benutzer")
- die Wahlhilfe ist aktiv und für alle Telefone eingestellt (sonst klingelt nur ein Telefon) ![](/docu/wahlhilfe.jpg?raw=true "Wahlhilfe")
