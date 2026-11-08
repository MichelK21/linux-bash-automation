#!/usr/bin/env bash

echo "===== LINUX SYSTEM MONITOR ====="

echo ""
echo "--- Nom de la machine ---"
hostname

echo ""
echo "--- Date actuelle ---"
date

echo ""
echo "--- Temps de fonctionnement ---"
uptime

echo ""
echo "--- Memoire RAM ---"
free -h

echo ""
echo "--- Espace disque ---"
df -h "$HOME"

echo ""
echo "--- Etat du service cron ---"
if systemctl is-active --quiet cron.service; then
    echo "cron : ACTIF"
else
    echo "cron : NON ACTIF"
fi

echo ""
echo "===== FIN DU DIAGNOSTIC ====="
