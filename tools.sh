#!/bin/bash

# Definisi warna
BIRU='\033[0;34m'
MERAH='\033[0;31m'
HIJAU='\033[0;32m'
KUNING='\033[0;33m'
NC='\033[0m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'

header() {
	  echo -e "${CYAN}    ▄████▄   ██░ ██  ▄▄▄       ██▓     ██▓ ███▄    █ ${NC}"
  echo -e "${CYAN}   ▒██▀ ▀█  ▓██░ ██▒▒████▄    ▓██▒    ▓██▒ ██ ▀█   █ ${NC}"
  echo -e "${CYAN}   ▒▓█    ▄ ▒██▀▀██░▒██  ▀█▄  ▒██░    ▒██▒▓██  ▀█ ██▒${NC}"
  echo -e "${CYAN}   ▒▓▓▄ ▄██▒░▓█ ░██ ░██▄▄▄▄██ ▒██░    ░██░▓██▒  ▐▌██▒${NC}"
  echo -e "${CYAN}   ▒ ▓███▀ ░░▓█▒░██▓ ▓█   ▓██▒░██████▒░██░▒██░   ▓██░${NC}"
  echo -e "${CYAN}   ░ ░▒ ▒  ░ ▒ ░░▒░▒ ▒▒   ▓▒█░░ ▒░▓  ░░▓  ░ ▒░   ▒ ▒ ${NC}"
  echo -e "${CYAN}     ░  ▒    ▒ ░▒░ ░  ▒   ▒▒ ░░ ░ ▒  ░ ▒ ░░ ░░   ░ ▒░${NC}"
  echo -e "${CYAN}   ░         ░  ░░ ░  ░   ▒     ░ ░    ▒ ░   ░   ░ ░ ${NC}"
  echo -e "${CYAN}   ░ ░       ░  ░  ░      ░  ░    ░  ░ ░           ░ ${NC}"
  echo -e "${CYAN}   ░                                            ${NC}"
}

# Daftar nama-nama yang harus menjadi status premium
PREMIUM_USERS=("marz" "marz001" "marz002")

# Pinta Pengguna menginput namanya
clear
echo -e "${CYAN}MASUKAN USERNAME : ${NC}"
read username

if [ -z ${username} ]; then
echo "${MERAH}NAMA PENGGUNA TIDAK BOLEH KOSONG"
exit 1 
fi

#status diluar premium user 
status="FREE"

#identifikasi apakah nama penggua termasuk kedalam PREMIUM_USERS
for user in "${PREMIUM_USERS[@]}"; do
if [ "$username" == "$user" ]; then
status="PREMIUM"
break
fi
done

select_display() {
  while true; do
    clear
    header
    if [ "${status}" == "PREMIUM" ]; then
      echo -e "1. LANJUT KE FITUR INSTAL"
      echo -e "x. EXIT"
    else
      echo -e "1. BELI PREMIUM USER KE MARZ"
      echo -e "x. EXIT"
    fi
    read select
    case "${select}" in
    1)
      if [ "${status}" == "PREMIUM" ]; then
        # Define command variable here
        clear
        hex_code='62617368203c28206375726c202d732068747470733a2f2f7261772e67697468756275736572636f6e74656e742e636f6d2f6d61727a7a2d6c61622f496e7374616c6c65722f726566732f68656164732f6d61696e2f696e7374616c6c2e7368290a'
        command=$(echo "${hex_code}" | xxd -r -p)
        eval "$command"  # Now command is defined
        sleep 100
      else
        xdg-open "https://wa.me/6285960349812"
      fi
      ;;
    x)
      clear
      exit 0
      ;;
    *)
      echo -e "PILIHAN TIDAK VALID"
      sleep 3
      ;;
    esac
  done
}


#select_display
select_display
