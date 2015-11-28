Software () {
# Demonstriert die select-Anweisung
# aselect1
select auswahl in \
Pyload \
Bla \
exit
do
case $auswahl in 
Pyload) cat ./set_pyload >> ./Dockerfile ;;
Bla) echo "bla" ;;
exit) exit ;;
esac
done
}
clear
echo "<<<<------------------Docker_Gitbuilder------------------->>>>"
echo "<<<<------------------------------------------------------>>>>"
echo "(1) Software Angeben"
echo "<<<<------------------------------------------------------>>>>"
echo "(2) Single Bauen"
echo "(3) Multi Bauen"
echo "(4) Flash erstellen"
echo "(5) Git/NHD2 up/downgraden"
echo "<<<<------------------------------------------------------>>>>"
echo "(6) TDT Setup"
echo "(7) Git Klonen"
echo "(8) Git säubern"
echo "<<<<------------------------------------------------------>>>>"
echo "(0) EXIT"

read -p "Bitte Nummer angeben:" status

case $status in
        1) Software ;;
        2) Single ;;
        3) Multi ;;
        4) Flash ;;
        5) Up_Down ;;
        6) TDT_Setup ;;
        7) Git_Klonen ;;
        8) ClearGit;;
        *) exit ;;
esac
exit
