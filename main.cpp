#include <pdcurses.h>

int main() {
    initscr();            // ncurses starten
    printw("Hallo Welt!!!"); // Text ausgeben
    refresh();            // Bildschirm aktualisieren
    getch();              // Auf Tastendruck warten
    //endwin();             // ncurses beenden
    return 0;
}
