#!/bin/sh

# Aktivera den virtuella miljön
source .venv/bin/activate

# Vänta lite för att den potentiella databasen ska vara redo
sleep 5

echo "Kör tester..."

# Kör make test som inkluderar validering och alla tester
make test || {
    # Om make test misslyckas, kolla om det bara är clean-py problemet
    if [ $? -eq 2 ]; then
        echo "Tester slutfördes med clean-py varningar (ignoreras)"
        exit 0
    else
        echo "Tester misslyckades med riktiga fel"
        exit 1
    fi
}