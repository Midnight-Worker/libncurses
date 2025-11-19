# sudo apt install inotify-tools
# pacman -S mingw-w64-x86_64-fswatch

while inotifywait -q -e close_write main.c; do
    clear
    echo "=== Kompiliere... ==="
    if gcc main.c -o prog; then
        echo "=== Starte prog ==="
        ./prog
    else
        echo "Kompilierfehler 😭"
    fi
    echo
    echo "=== Fertig, warte auf nächste Änderung... ==="
done


#### Mit fswatch ####
#!/bin/bash

#clear
#echo "Watching test.py..."

#fswatch -o test.py | while read num; do
#    clear
#    echo "=== Kompiliere... ==="
#    if gcc main.c -o prog; then
#        echo "=== Starte prog ==="
#        ./prog
#    else
#        echo "Kompilierfehler 😭"
#    fi
#    echo
#    echo "=== Fertig, warte auf nächste Änderung... ==="
#done


### update  für mings64 windows: ###
### update für windows: ###
#fswatch --monitor=poll_monitor -o test.py | while read; do
#    clear
#    python test.py
#done