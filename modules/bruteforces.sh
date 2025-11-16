#!/data/data/com.termux/files/usr/bin/bash

BASE_DIR=~/XIPHER/tools/bruteforce
mkdir -p "$BASE_DIR"
cd "$BASE_DIR"

install_tool() {
    repo=$1
    folder=$2
    echo -e "\e[1;92m[+] Installing: $folder\e[0m"
    git clone "$repo" "$folder"
}

show_bruteforce_menu() {
    while true; do
        clear
        echo -e "\e[1;96m====== BRUTEFORCE MODULE – 25 TOOLS ======\e[0m"
        echo ""
        echo "1) Hydra"
        echo "2) Medusa"
        echo "3) Ncrack"
        echo "4) Patator"
        echo "5) THC-SSL-DOS"
        echo "6) Brutespray"
        echo "7) SMBBrute"
        echo "8) FTP-Bruteforce"
        echo "9) SSH-Bruteforce"
        echo "10) SMTP-Bruteforce"
        echo "11) HTTP-BF (Form Bruteforce)"
        echo "12) Instagram-BF"
        echo "13) Facebook-Bruteforce"
        echo "14) Twitter-Bruteforce"
        echo "15) Gmail-Bruteforce"
        echo "16) RouterSploit Bruter"
        echo "17) Wordlist-Builder"
        echo "18) CUPP (Custom Wordlist Maker)"
        echo "19) Crunch"
        echo "20) Hashcat-helper"
        echo "21) John-the-Ripper"
        echo "22) Hash-Identifier"
        echo "23) Namechk Username Bruter"
        echo "24) Phone Number Bruteforce"
        echo "25) Android PIN Bruteforce"
        echo "0) Back"
        echo ""
        read -p "Select Tool Number: " opt

        case $opt in
            1) install_tool https://github.com/vanhauser-thc/thc-hydra hydra ;;
            2) install_tool https://github.com/jmk-foofus/medusa medusa ;;
            3) install_tool https://github.com/nmap/ncrack ncrack ;;
            4) install_tool https://github.com/lanjelot/patator patator ;;
            5) install_tool https://github.com/vanhauser-thc/thc-ssl-dos ssl-dos ;;
            6) install_tool https://github.com/x90skysn3k/brutespray brutespray ;;
            7) install_tool https://github.com/m4ll0k/SMBrute smbrute ;;
            8) install_tool https://github.com/LasCC/ftpbruter ftp-bruter ;;
            9) install_tool https://github.com/BlackArch/sshbrute ssh-brute ;;
            10) install_tool https://github.com/BlackArch/smtpbrute smtp-brute ;;
            11) install_tool https://github.com/ekultek/whatwaf http-bruter ;;
            12) install_tool https://github.com/BitTheByte/instainsane instainsane ;;
            13) install_tool https://github.com/FDX100/Facebook-Bruteforce fb-brute ;;
            14) install_tool https://github.com/FDX100/Twitter-brute twitter-brute ;;
            15) install_tool https://github.com/FDX100/Gmail-Bruteforce gmail-brute ;;
            16) install_tool https://github.com/threat9/routersploit routersploit ;;
            17) install_tool https://github.com/Manisso/Wordlist-Generator wordlist-gen ;;
            18) install_tool https://github.com/Mebus/cupp cupp ;;
            19) install_tool https://github.com/crunchsec/crunch crunch ;;
            20) install_tool https://github.com/sajjadium/Hashcat-Helper hashcat-helper ;;
            21) install_tool https://github.com/openwall/john john ;;
            22) install_tool https://github.com/blackploit/hash-identifier hash-id ;;
            23) install_tool https://github.com/atakaneren/namechk namechk ;;
            24) install_tool https://github.com/luk-benchmark/PhoneSploit-Pro phone-brute ;;
            25) install_tool https://github.com/urbanadventurer/Android-PIN-Bruteforce android-pin ;;
            0) break ;;
            *) echo "Invalid Option"; sleep 1 ;;
        esac
    done
}

show_bruteforce_menu
