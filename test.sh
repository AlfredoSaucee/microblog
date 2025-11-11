#!/bin/sh

# Aktivera den virtuella miljön
source .venv/bin/activate

# Vänta lite för att den potentiella databasen ska vara redo
sleep 5

echo "Kör tester..."

# Kör make test som inkluderar validering och alla tester
make test

# Hämta exit-koden från make test
exit_code=$?

echo "Tester avslutade med exit-kod: $exit_code"

# Avsluta med samma kod som make test
exit $exit_code