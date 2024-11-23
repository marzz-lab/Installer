#!/bin/bash

# Color
BLUE='\033[0;34m'       
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m'

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

# Display welcome message
display_welcome() {
  # Clear screen
  clear
  header
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "${BLUE}[+]                                            [+]${NC}"
  echo -e "${BLUE}[+]             AUTO INSTALLER THEMA           [+]${NC}"
  echo -e "${BLUE}[+]                © MARZOFFICIAL              [+]${NC}"
  echo -e "${BLUE}[+]                                            [+]${NC}"
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e ""
  
  # Body Content
  echo -e "${WHITE}Script ini dibuat untuk mempermudah penginstalasian tema Pterodactyl.${NC}"
  echo -e "${WHITE}Dilarang keras untuk membagikan skrip ini secara bebas!${NC}"
  echo -e ""
  echo -e "${CYAN}𝗧𝗘𝗟𝗘𝗚𝗥𝗔𝗠 :${NC} ${WHITE}@MARZHOSTING${NC}"
  echo -e "${CYAN}𝗖𝗥𝗘𝗗𝗜𝗧𝗦 :${NC} ${WHITE}@Amarmaruf${NC}"
  sleep 3
  clear
}

#Update and install jq
install_jq() {
  clear
  header
  echo -e "                                                       "
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "${BLUE}[+]             UPDATE & INSTALL JQ            [+]${NC}"
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "                                                       "
  sudo apt update && sudo apt install -y jq
  if [ $? -eq 0 ]; then
    echo -e "                                                       "
    echo -e "${GREEN}[+] ======================================= [+]${NC}"
    echo -e "${GREEN}[+]            INSTALL JQ BERHASIL          [+]${NC}"
    echo -e "${GREEN}[+] ======================================= [+]${NC}"
  else
    echo -e "                                                       "
    echo -e "${RED}[+] ========================================= [+]${NC}"
    echo -e "${RED}[+]              INSTALL JQ GAGAL             [+]${NC}"
    echo -e "${RED}[+] ========================================= [+]${NC}"
    exit 1
  fi
  echo -e "                                                       "
  sleep 1
  clear
}
#Check user token
check_token() {
  clear
  header
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "${BLUE}[+]               LICENSY MARZ CODE            [+]${NC}"
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "                                                       "
  echo -e "${YELLOW}MASUKAN AKSES TOKEN :${NC}"
  read -r USER_TOKEN

  if [ "$USER_TOKEN" = "marz001" ]; then
    echo -e "${GREEN}AKSES BERHASIL${NC}"
    sleep 3
  else
    clear
    echo -e "${RED}Token Salah! Beli Kode Token Di MarzHosting${NC}"
    echo ""
    echo -e "${CYAN}TELEGRAM    : @MARZHOSTING${NC}"
    echo -e "${CYAN}WHATSAPP    : +6285960349812${NC}"
    echo -e "${CYAN}HARGA TOKEN : 25K FREE UPDATE JIKA ADA TOKEN BARU${NC}"
    echo ""
    echo -e "${CYAN}© Amarmaruf${NC}"

    exit 1
  fi
  clear
}

# Install theme
install_theme() {
  while true; do
  # Clear screen
  clear
  # Header
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
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "${BLUE}[+]                 SELECT THEME               [+]${NC}"
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e ""
  
  # Menu
  echo -e "${WHITE}PILIH THEME YANG INGIN DI INSTALL${NC}"
  echo -e "${CYAN}1.${WHITE} stellar"
  echo -e "${CYAN}2.${WHITE} billing"
  echo -e "${CYAN}3.${WHITE} enigma"
  echo -e "${CYAN}x.${WHITE} kembali"
  echo -e ""
  echo -e "${BLUE}masukan pilihan (1/2/3/x) :${NC}"
  read -r SELECT_THEME
  case "$SELECT_THEME" in
  1)
  THEME_URL=$(echo -e "https://github.com/SkyzoOffc/Pterodactyl-Theme-Autoinstaller/raw/main/stellar.zip")        
  break
  ;;
  2)
  THEME_URL=$(echo -e "https://github.com/SkyzoOffc/Pterodactyl-Theme-Autoinstaller/raw/main/billing.zip")
  break
  ;;
  3)
  THEME_URL=$(echo -e "https://github.com/SkyzoOffc/Pterodactyl-Theme-Autoinstaller/raw/main/enigma.zip")
  break
  ;; 
  x)
  return
  ;;
  *)
  echo -e "${RED}Pilihan tidak valid, silahkan coba lagi.${NC}"
  ;;
  esac
  done
  
if [ -e /root/pterodactyl ]; then
    sudo rm -rf /root/pterodactyl
  fi
  wget -q "$THEME_URL"
  sudo unzip -o "$(basename "$THEME_URL")"
  
if [ "$SELECT_THEME" -eq 1 ]; then
  echo -e "                                                       "
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "${BLUE}[+]              INSTALLASI THEMA              [+]${NC}"
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "                                                                   "
  sudo cp -rfT /root/pterodactyl /var/www/pterodactyl
  curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  sudo apt install -y nodejs
  sudo npm i -g yarn
  cd /var/www/pterodactyl
  yarn add react-feather
  php artisan migrate
  yarn build:production
  php artisan view:clear
  sudo rm /root/stellar.zip
  sudo rm -rf /root/pterodactyl

  echo -e "                                                       "
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "${GREEN}[+]               INSTALL SUCCESS             [+]${NC}"
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e ""
  sleep 2
  clear
  exit 0

elif [ "$SELECT_THEME" -eq 2 ]; then
  echo -e "                                                       "
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "${BLUE}[+]                INSTALLASI THEMA            [+]${NC}"
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "                                                       "
  sudo cp -rfT /root/pterodactyl /var/www/pterodactyl
  curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  sudo apt install -y nodejs
  npm i -g yarn
  cd /var/www/pterodactyl
  yarn add react-feather
  php artisan billing:install stable
  php artisan migrate
  yarn build:production
  php artisan view:clear
  sudo rm /root/billing.zip
  sudo rm -rf /root/pterodactyl

  echo -e "                                                       "
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "${GREEN}[+]                INSTALL SUCCESS            [+]${NC}"
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "                                                       "
  sleep 2
  clear
  return

elif [ "$SELECT_THEME" -eq 3 ]; then
  echo -e "                                                       "
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "${BLUE}[+]                INSTALLASI THEMA            [+]${NC}"
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "                                                                   "

    # Menanyakan informasi kepada pengguna untuk tema Enigma
    echo -e "${YELLOW}Masukkan link wa (https://wa.me...) : ${NC}"
    read LINK_WA
    echo -e "${YELLOW}Masukkan link group (https://.....) : ${NC}"
    read LINK_GROUP
    echo -e "${YELLOW}Masukkan link channel (https://...) : ${NC}"
    read LINK_CHNL

    # Mengganti placeholder dengan nilai dari pengguna
    sudo sed -i "s|LINK_WA|$LINK_WA|g" /root/pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    sudo sed -i "s|LINK_GROUP|$LINK_GROUP|g" /root/pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    sudo sed -i "s|LINK_CHNL|$LINK_CHNL|g" /root/pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    

  sudo cp -rfT /root/pterodactyl /var/www/pterodactyl
  curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  sudo apt install -y nodejs
  sudo npm i -g yarn
  cd /var/www/pterodactyl
  yarn add react-feather
  php artisan migrate
  yarn build:production
  php artisan view:clear
  sudo rm /root/enigma.zip
  sudo rm -rf /root/pterodactyl

  echo -e "                                                       "
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "${GREEN}[+]               INSTALL SUCCESS             [+]${NC}"
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e ""
  sleep 5
else
  echo ""
  echo "Pilihan tidak valid. silahkan pilih 1/2/3."
fi
}


# Uninstall theme
uninstall_theme() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "${BLUE}[+]                  DELETE THEME              [+]${NC}"
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "                                                       "
  bash <(curl https://raw.githubusercontent.com/VallzHost/installer-theme/main/repair.sh)
  echo -e "                                                       "
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "${GREEN}[+]              DELETE THEME SUKSES          [+]${NC}"
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "                                                       "
  sleep 2
  clear
}
install_themeSteeler() {
#!/bin/bash

echo -e "                                                       "
echo -e "${BLUE}[+] ============================================ [+]${NC}"
echo -e "${BLUE}[+]                  INSTALLASI THEMA            [+]${NC}"
echo -e "${BLUE}[+] ============================================ [+]${NC}"
echo -e "                                                                   "

# Unduh file tema
wget -O /root/stellar.zip https://github.com/SkyzoOffc/Pterodactyl-Theme-Autoinstaller/raw/main/stellar.zip


# Ekstrak file tema
unzip /root/stellar.zip -d /root/pterodactyl

# Salin tema ke direktori Pterodactyl
sudo cp -rfT /root/pterodactyl /var/www/pterodactyl

# Instal Node.js dan Yarn
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs
sudo npm i -g yarn

# Instal dependensi dan build tema
cd /var/www/pterodactyl
yarn add react-feather
php artisan migrate
yarn build:production
php artisan view:clear

# Hapus file dan direktori sementara
sudo rm /root/stellar.zip
sudo rm -rf /root/pterodactyl

echo -e "                                                       "
echo -e "${GREEN}[+] =========================================== [+]${NC}"
echo -e "${GREEN}[+]                 INSTALL SUCCESS             [+]${NC}"
echo -e "${GREEN}[+] =========================================== [+]${NC}"
echo -e ""
sleep 2
clear
exit 0

}
create_node() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "${BLUE}[+]                 CREATE NODE                [+]${NC}"
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "                                                       "
  #!/bin/bash
#!/bin/bash

# Minta input dari pengguna
read -p "Masukkan nama lokasi: " location_name
read -p "Masukkan deskripsi lokasi: " location_description
read -p "Masukkan domain: " domain
read -p "Masukkan nama node: " node_name
read -p "Masukkan RAM (dalam MB): " ram
read -p "Masukkan jumlah maksimum disk space (dalam MB): " disk_space
read -p "Masukkan Locid: " locid

# Ubah ke direktori pterodactyl
cd /var/www/pterodactyl || { echo "Direktori tidak ditemukan"; exit 1; }

# Membuat lokasi baru
php artisan p:location:make <<EOF
$location_name
$location_description
EOF

# Membuat node baru
php artisan p:node:make <<EOF
$node_name
$location_description
$locid
https
$domain
yes
no
no
$ram
$ram
$disk_space
$disk_space
100
8080
2022
/var/lib/pterodactyl/volumes
EOF

  echo -e "                                                       "
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "${GREEN}[+]        CREATE NODE & LOCATION SUKSES      [+]${NC}"
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "                                                       "
  sleep 2
  clear
  exit 0
}
uninstall_panel() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "${BLUE}[+]                 UNINSTALL PANEL            [+]${NC}"
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "                                                       "


bash <(curl -s https://pterodactyl-installer.se) <<EOF
y
y
y
y
EOF


  echo -e "                                                       "
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "${GREEN}[+]           UNINSTALL PANEL SUKSES          [+]${NC}"
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "                                                       "
  sleep 2
  clear
  exit 0
}
configure_wings() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "${BLUE}[+]               CONFIGURE WINGS              [+]${NC}"
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "                                                       "
  #!/bin/bash

# Minta input token dari pengguna
read -p "Masukkan token Configure menjalankan wings: " wings

eval "$wings"
# Menjalankan perintah systemctl start wings
sudo systemctl start wings

  echo -e "                                                       "
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "${GREEN}[+]            CONFIGURE WINGS SUKSES         [+]${NC}"
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "                                                       "
  sleep 2
  clear
  exit 0
}
hackback_panel() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "${BLUE}[+]                  HACK BACK PANEL           [+]${NC}"
  echo -e "${BLUE}[+] ========================================== [+]${NC}"
  echo -e "                                                       "
  # Minta input dari pengguna
read -p "Masukkan Username Panel: " user
read -p "password login " psswdhb
  #!/bin/bash
cd /var/www/pterodactyl || { echo "Direktori tidak ditemukan"; exit 1; }

# Membuat lokasi baru
php artisan p:user:make <<EOF
yes
hackback@gmail.com
$user
$user
$user
$psswdhb
EOF
  echo -e "                                                       "
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "${GREEN}[+]              AKUN TELAH DI ADD            [+]${NC}"
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "                                                       "
  sleep 2
  
  exit 0
}
ubahpw_vps() {
  echo -e "                                                       "
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "${GREEN}[+]               UBAH PASSWORD VPS           [+]${NC}"
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "                                                       "
read -p "Masukkan Pw Baru: " pw
read -p "Masukkan Ulang Pw Baru " pw

passwd <<EOF
$pw
$pw

EOF


  echo -e "                                                       "
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "${GREEN}[+]               GANTI PW VPS SUKSES         [+]${NC}"
  echo -e "${GREEN}[+] ========================================= [+]${NC}"
  echo -e "                                                       "
  sleep 2
  
  exit 0
}
# Main script
display_welcome
check_token

while true; do
  clear
  header
  echo -e "                                                              "
  echo -e "BERIKUT LIST INSTALL :"
  echo "1. Install theme"
  echo "2. Uninstall theme"
  echo "3. Configure Wings"
  echo "4. Create Node"
  echo "5. Uninstall Panel"
  echo "6. Hack Back Panel"
  echo "7. Ubah Pw Vps"
  echo "x. Exit"
  echo -e "Masukkan pilihan 1/2/x:"
  read -r MENU_CHOICE
  clear

  case "$MENU_CHOICE" in
    1)
      install_theme
      ;;
    2)
      uninstall_theme
      ;;
      3)
      configure_wings
      ;;
      4)
      create_node
      ;;
      5)
      uninstall_panel
      ;;
      6)
      hackback_panel
      ;;
      7)
      ubahpw_vps
      ;;
    x)
      echo "Keluar dari skrip."
      exit 0
      ;;
    *)
      echo "Pilihan tidak valid, silahkan coba lagi."
      ;;
  esac
done
