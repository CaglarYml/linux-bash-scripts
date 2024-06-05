echo Bu betik CaglarYml tarafindan kullanilmasi adina hazirlanmistir.
echo Istediginiz portu acmak icin ENTER tusuna tiklayin ardindan
echo gerekli yonlendirmeler yapilacaktir.
echo Uncompiled Firewall(UFW) kullanilmistir.
echo .
echo Lutfen istediginiz portu giriniz ornegin 80
read -p 'Port: ' portvar
echo Lutfen sileceginiz port protokolunu giriniz ornegin TCP
read -p 'Protokol: ' protovar
ufw deny $portvar/$protovar
echo Port basariyla kapatilmistir. Betik kapatiliyor...
