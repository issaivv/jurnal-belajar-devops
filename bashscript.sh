#!/bin/bash
#Latihan shell script
#
clear
MERAH='\033[0;31m'
HIJAU='\033[0;32m'
NC='\033[0m'

echo "Hallo Calon Saciers!"
echo ""
echo "Siapa nama anda?"
read name
echo "Berapa umur anda?"
read age
echo "Jurusan apa yang anda pilih? (TITL/TPTU/TKJ/AKL/MPLB)"
read major

	if [ "$major" != "TITL" ] && [ "$major" != "TPTU" ] && [ "$major" != "TKJ" ] && [ "$major" != "AKL" ] && [ "$major" != "MPLB" ]; then
	  echo -e "${MERAH}Maaf, jurusan '$major' tidak ada di sekolah kita!${NC}"
	  echo "Silahkan jalankan ulang skrip dan pilih jurusan yang tersedia."
	  exit 1
	fi

echo "Apa yang membuat anda tertarik dengan jurusan tersebut?"
read interest 
echo "Seberapa yakin anda dengan pilihan anda?(kurang yakin/yakin/sangat yakin)"
read confident

	if [ "$confident" == "yakin" ] || [ "$confident" == "sangat yakin" ]; then
	  echo "Mantap! Modal utama sukses adalah percaya diri."
	else
	  echo "Tetap semangat! Ragu di awal itu wajar, jalani saja dulu."
	fi
echo ""
echo "--- Kata Motivasi Hari Ini Untukmu ---"
echo ""
	if [ "$major" == "TKJ" ]; then
	 echo "Jaringan saja diperjuangkan agar selalu Connected, apalagi masa depanmu!"
	elif [ "$major" == "TPTU" ]; then
	 echo "Kepala boleh dingin saat menghadapi masalah, tapi semnagat belajarmu harus tetap membara ya!"
	else
	 echo "Pepatah mengatakan 'Apapun jurusannya, kunci kesuksesannya adalah konsistensi. Sukses menantimu di masa depan!'"
	fi
echo ""
echo -e "${HIJAU}Goodluck $name!${NC}"
tanggal=$(date)
echo ""
echo ""
echo "Inputan anda pada $tanggal: $name, $age, $major, $interest, $confident"


