#!/data/data/com.termux/files/usr/bin/bash

BASE_DIR=~/XIPHER/tools/pass-recovery
mkdir -p "$BASE_DIR"
cd "$BASE_DIR"

install_tool() {
    repo=$1
    folder=$2
    echo -e "\e[1;92m[+] Installing: $folder\e[0m"
    git clone "$repo" "$folder"
}

show_pass_menu() {
    while true; do
        clear
        echo -e "\e[1;96m====== PASSWORD RECOVERY MODULE – 30 TOOLS ======\e[0m"
        echo ""
        echo "1) John The Ripper"
        echo "2) Hashcat"
        echo "3) Ophcrack (Rainbow Tables)"
        echo "4) Hydra (Login Cracker)"
        echo "5) Medusa"
        echo "6) Ncrack"
        echo "7) THC-Hydra Password Generator"
        echo "8) Crunch (Wordlist Generator)"
        echo "9) CeWL (Custom Wordlist Maker)"
        echo "10) Zydra (Zip / PDF Cracker)"
        echo "11) Fcrackzip"
        echo "12) PDFCrack"
        echo "13) Hash-Identifier"
        echo "14) Hash-Buster"
        echo "15) Hashcat-utils"
        echo "16) Wifi Handshake Cracker"
        echo "17) Aircrack-ng"
        echo "18) Rockyou Wordlist Downloader"
        echo "19) Mdk3 / Mdk4 Tools"
        echo "20) RainbowCrack Toolkit"
        echo "21) RSMangler"
        echo "22) Wordlist-Builder"
        echo "23) Brutex"
        echo "24) InstaBurst"
        echo "25) Facebook Brute (Educational)"
        echo "26) Email Password Bruteforce"
        echo "27) SSH Bruteforce Suite"
        echo "28) FTP/SSH Password Kit"
        echo "29) Full Wordlist Suite"
        echo "30) Complete Password Recovery Pack"
        echo "0) Back"
        echo ""

        read -p 'Select Tool Number: ' opt

        case $opt in
            1) pkg install john -y ;;
            2) pkg install hashcat -y ;;
            3) install_tool https://github.com/ophcrack/ophcrack ophcrack ;;
            4) pkg install hydra -y ;;
            5) pkg install medusa -y ;;
            6) pkg install ncrack -y ;;
            7) pkg install thc-ipv6 -y ;;
            8) pkg install crunch -y ;;
            9) gem install cewl ;;
            10) install_tool https://github.com/hamedA2/Zydra zydra ;;
            11) pkg install fcrackzip -y ;;
            12) pkg install pdfcrack -y ;;
            13) install_tool https://github.com/HashPals/Name-That-Hash nth ;;
            14) install_tool https://github.com/Hash-Buster/hash-buster hashbuster ;;
            15) install_tool https://github.com/hashcat/hashcat-utils hutils ;;
            16) install_tool https://github.com/aircrack-ng/aircrack-ng wifi ;;
            17) pkg install aircrack-ng -y ;;
            18) install_tool https://github.com/brannondorsey/naive-hashcat rockyou ;;
            19) pkg install mdk4 -y ;;
            20) install_tool https://github.com/projectrainbowcrack/rcrack rainbowcrack ;;
            21) install_tool https://github.com/urbanadventurer/username-anarchy rsmangler ;;
            22) install_tool https://github.com/wordlist/wordlistbuilder wlb ;;
            23) install_tool https://github.com/abrutex/brutex brutex ;;
            24) install_tool https://github.com/instaburst/tool instaburst ;;
            25) install_tool https://github.com/facebookbrute/tool fbbrute ;;
            26) install_tool https://github.com/mailbrute/emailbrute emailbrute ;;
            27) install_tool https://github.com/sshbrute/sshbrute sshbrute ;;
            28) install_tool https://github.com/ftpkit/ftp-ssh-kit ftpssh ;;
            29) install_tool https://github.com/wordlists/full wordlists ;;
            30) install_tool https://github.com/passrecovery/fullpack fullpack ;;
            0) break ;;
            *) echo "Invalid Option!"; sleep 1 ;;
        esac
    done
}

show_pass_menu
