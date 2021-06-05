#!/bin/bash
echo "Iniciando bakcup do mapa, $(date +%d/%m/%Y) as $(date +%H:%M:%S)."
screen -p 0 -S mine -X eval "stuff \"say Backup iniciado!\"\015"

#pausando o backup do server
screen -p 0 -S mine -X eval "stuff \"save-off\"\015"
screen -p 0 -S mine -X eval "stuff \"save-all\"\015"

sleep 5
#
#zipando o mapa e movendo para pasta backup
name="/root/Minecraft/backups/greensMap-$(date +%d.%m.%Y-%H.%M.%S).zip"
cd ./Minecraft
zip -r /$name ./mapGreens
#mv ./$name ./backups

screen -p 0 -S mine -X eval "stuff \"save-on\"\015"

sleep 1

echo "Backup concluido!"
screen -p 0 -S mine -X eval "stuff \"say Backup concluido!!!\"\015"