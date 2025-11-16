#!/data/data/com.termux/files/usr/bin/bash

BASE_DIR=~/XIPHER/tools/hash
mkdir -p "$BASE_DIR"
cd "$BASE_DIR"

install_tool() {
    repo=$1
    folder=$2
    echo -e "\e[1;92m[+] Installing: $folder\e[0m"
    git clone "$repo" "$folder"
}

show_hash_menu() {
    while true; do
        clear
        echo -e "\e[1;96m====== HASH CRACKING / CRYPTO MODULE – 30 TOOLS ======\e[0m"
        echo ""
        echo "1) Hashcat"
        echo "2) John The Ripper"
        echo "3) Hydra (Password Cracker)"
        echo "4) Medusa"
        echo "5) Ncrack"
        echo "6) Hash-Identifier"
        echo "7) HashID"
        echo "8) Hash-Analyzer"
        echo "9) CrackStation Wordlists"
        echo "10) RockYou Wordlist"
        echo "11) Crunch Wordlist Generator"
        echo "12) RSMangler Wordlist Mutator"
        echo "13) CeWL (Custom Wordlist Maker)"
        echo "14) CUPP"
        echo "15) Mentalist (Wordlist Tool)"
        echo "16) Pydictor"
        echo "17) THC-SSL-DOS"
        echo "18) JWT Tool"
        echo "19) HashPump"
        echo "20) RarCrack"
        echo "21) ZipCrack"
        echo "22) PDFCrack"
        echo "23) Bcrypt Cracker"
        echo "24) Md5Decrypter"
        echo "25) Sha1Decrypter"
        echo "26) RainbowCrack"
        echo "27) WordHound (Smart Wordlist)"
        echo "28) ENML (Hash Mask Attack)"
        echo "29) Pamcrack"
        echo "30) Argon2 Cracker"
        echo "0) Back"
        echo ""

        read -p "Select Tool Number: " opt

        case $opt in
            1) install_tool https://github.com/hashcat/hashcat hashcat ;;
            2) install_tool https://github.com/openwall/john john ;;
            3) install_tool https://github.com/vanhauser-thc/thc-hydra hydra ;;
            4) install_tool https://github.com/jmk-foofus/medusa medusa ;;
            5) install_tool https://github.com/nmap/ncrack ncrack ;;
            6) install_tool https://github.com/blackploit/hash-identifier hash-identifier ;;
            7) install_tool https://github.com/psypanda/hashID hashid ;;
            8) install_tool https://github.com/HashPals/Name-That-Hash nth ;;
            9) install_tool https://github.com/berzerk0/Probable-Wordlists crackstation ;;
            10) install_tool https://github.com/brannondorsey/naive-hashcat rockyou ;;
            11) install_tool https://github.com/crunchsec/crunch crunch ;;
            12) install_tool https://github.com/digininja/RSMangler rsmangler ;;
            13) install_tool https://github.com/digininja/CeWL cewl ;;
            14) install_tool https://github.com/Mebus/cupp cupp ;;
            15) install_tool https://github.com/sc0tfree/mentalist mentalist ;;
            16) install_tool https://github.com/landgrey/pydictor pydictor ;;
            17) install_tool https://github.com/vanhauser-thc/thc-ssl-dos ssl-dos ;;
            18) install_tool https://github.com/ticarpi/jwt_tool jwt ;;
            19) install_tool https://github.com/bwall/HashPump hashpump ;;
            20) install_tool https://github.com/crackersavage/rarcrack rarcrack ;;
            21) install_tool https://github.com/JuniorJPDJ/zip-crack zipcrack ;;
            22) install_tool https://github.com/pdfcrack/pdfcrack pdfcrack ;;
            23) install_tool https://github.com/Neo23x0/bcryptcracker bcryptcrack ;;
            24) install_tool https://github.com/s0md3v/Hash-Buster md5-buster ;;
            25) install_tool https://github.com/s0md3v/Hash-Buster sha1-buster ;;
            26) install_tool https://github.com/Rawsec/raspberry-pi-rainbowrainbow rainbowcrack ;;
            27) install_tool https://github.com/carlospolop/wordhound wordhound ;;
            28) install_tool https://github.com/x90skysn3k/enml enml ;;
            29) install_tool https://github.com/pipperr/pamcrack pamcrack ;;
            30) install_tool https://github.com/P-H-C/phc-winner-argon2 argon2 ;;
            0) break ;;
            *) echo "Invalid Option"; sleep 1 ;;
        esac
    done
}

show_hash_menu
