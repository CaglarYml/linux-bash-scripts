echo Bu betik CaglarYml tarafindan kullanilmasi adina hazirlanmistir.
echo Istediginiz portu acmak icin ENTER tusuna tiklayin ardindan
echo gerekli yonlendirmeler yapilacaktir.
echo Uncompiled Firewall(UFW) kullanilmistir.
echo .
echo Lutfen istediginiz portu giriniz ornegin 80
read -p 'Port: ' portvar
echo Lutfen istediginiz port protokolunu giriniz ornegin TCP
read -p 'Protokol: ' protovar
ufw allow $portvar/$protovar
echo Port basariyla acilmistir. Betik kapatiliyor...
