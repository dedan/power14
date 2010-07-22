

Anleitung um unser power14_test.m skript zum laufen zu bekommen. 

1. lade die erforderlichen Treiber von der Website des Herstellers (www.ced.co.uk)
** matced32.zip   	(irgendwo unter contributed)
** WINSUPP.exe 		(unter Downloads -> Windows installation)
** WS01.exe 		(unter Downloads -> 1401 Programming support)

2. den treiber für das CED Power 1401 installieren (WINSUPP.exe)
** mit dem treiber kommt eine software (try1401), 
** hiermit kann die usb verbindung getestet werden

3. 
** Installiere den Power 1401 language support (WS01.exe)
** dies wird standardmäßig in das Verzeichnis C:\1401Lang installiert
** aus C:\1401Lang\utils die datei use1432.dll in C:\Windows\system32 verschieben
** mit der language support installation kommt ein tool ("interact") mit dem kommandos an das 1401 geschickt werden können (gut zum testen)

4.
** entpacke das verzeichnis matced32.zip
** verschiebe die MATCED32.dll in das verzeichnis in dem das power14_test.m skript liegt
** für die neuesten matlab versionen muss wohl das .dll in .mexw32 umbenannt werden

5.
** power14_test.m ausführen und viel spaß  (wir verwenden den DIGITAL OUTPUT 0)


TIPS & TRICKS
* es wird mit dem language support ein pdf mit programmieranleitung für das 1401 installiert
* zu finden im startmenu
* hierin findet sich dokumentation zu kommandos wie "DIG" welches wir für das an und ausschalten eines digitalports benutzen