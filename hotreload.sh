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