#! /bin/bash
echo -e "\e[31mBLUETOOTH\e[0m"
echo "------------------------------------------"
echo "----------------------------------------"
echo "----------------------------------"
echo "---------------------------"
echo "---------------------"
echo "----------------"
echo "-----------"
echo "------"
echo "---"

echo -e "\e[31m** DAHA ÖNCE BAĞLANILANLAR 'Aşağısı boş ise liste boştur.' **\e[0m"

bluetoothctl devices

echo "-----------------------------------------"
echo "------"
echo -e "\e[34mYENİ TARAMA İŞLEMİ İÇİN (1)\e[0m"
echo -e "\e[34mYENİ CİHAZA BAĞLANMAK İÇİN (2)\e[0m"
echo -e "\e[34mVAR OLAN BAĞLANTIYI SONLANDIR (3)\e[0m"

read deger

case $deger in
	"1")
		echo -e "\e[34mNE KADAR SÜRE TARANSIN 5-10-15? 'Süre Değişiklik Gösterebilir'\e[0m"
		read sure
		sudo hcitool scan
		sleep $sure
		exit
		echo "İŞLEM KAPATILDI" ;;
	"2")
		echo "BAĞLANILACAK CİHAZIN MAC ADRESİ"
		read mac
		bluetoothctl connect $mac ;;
	"3")
		bluetoothctl disconnect ;;
*)
	echo "geçersiz dostum"

esac

echo "----------------------------------"
echo "-----------------------------"
echo "--------------------"
echo "--------------"
echo "---------"
echo "---"
