#!/bin/sh
while true
do
java -Xms1G -Xmx3584m -jar server.jar nogui
echo "Se você quiser parar completamente o processo do servidor agora, pressione Ctrl + C antes do tempo acabar!"
echo "Iniciando em:"
for i in {3,0}
do
echo "$i"
sleep 1
done
echo "Iniciando agora!"
done
