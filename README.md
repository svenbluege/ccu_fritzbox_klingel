# CCU - Fritzbox Klingel

Dieses kleine Script lässt die Telefone an der Fritzbox für ein paar Sekunden klingeln. Dazu kopiert man fritzbox_ring.sh es nach /usr/local/addons/cuxd/extra, legt die Dateirechte auf 0755 fest und erstellt ein Programm in der CCU. Der Aktor für die Scriptausführung ist ein CUxD-Gerät.

Anwendung:
    /usr/local/addons/cuxd/extra/fritzbox_ring.sh [Klingeldauer]

![CCU Programm Screenshot](/programm.jpg?raw=true "CCU Programm")

Sources: 
http://chris.cnie.de/netzwerk/fritzbox.html
http://fritz.box:49000/x_voipSCPD.xml

Einrichtung CUxD-Aktor zur Scriptausführung
https://homematic-guru.de/homematic-automatisches-backup

