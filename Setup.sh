
Setup () {
COLUMNS=1
PS3="Nummer angeben : "
clear
echo "(1) ADD Software"
echo "(2) Remove Software"
echo "(3) Box löschen"
read -p "Bitte Nummer angeben:" status
case "$status" in
1) 	 
	echo "(1) Pyload"
	
	read -p "Bitte Nummer angeben:" Software
}
	
Add () {

case "$Software" in
1) Pyload
	cat ./set_pyload >> ./Dockerfile
;;
2) #enigma2-pli-nightly 
;;
3) #neutrino 
;;
4) #xbmc-nightly 
;; 	
esac
}


echo "<<<<------------------Docker_Setup------------------>>>>"	
echo "<<<<------------------------------------------------------>>>>"
echo "(1) Setup"
echo "<<<<------------------------------------------------------>>>>"
echo "(2) Single Bauen"
echo "(3) Multi Bauen"
echo "(4) Flash erstellen"
echo "(5) Git/NHD2 up/downgraden"
echo "<<<<------------------------------------------------------>>>>"

exit
