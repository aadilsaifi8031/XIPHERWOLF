#!/data/data/com.termux/files/usr/bin/bash

BASE_DIR=~/XIPHER/tools/phishing
mkdir -p "$BASE_DIR"
cd "$BASE_DIR"

install_tool() {
    repo=$1
    folder=$2
    echo -e "\e[1;92m[+] Installing: $folder in $BASE_DIR\e[0m"
    git clone "$repo" "$folder"
}

show_phishing_menu() {
    while true; do
        clear
        echo -e "\e[1;96m====== PHISHING MODULE – 18 TOOLS ======\e[0m"
        echo ""

        echo "1) Zphisher"
        echo "2) HiddenEye"
        echo "3) NexPhisher"
        echo "4) BlackEye"
        echo "5) AdvPhishing"
        echo "6) SocialFish"
        echo "7) ShadowPhisher"
        echo "8) KingPhisher"
        echo "9) PhisherMan"
        echo "10) Seeker (Location Tracker)"
        echo "11) SayCheese (Camera Hacking Page)"
        echo "12) QR Code Phishing Generator"
        echo "13) Evilginx2 (Advanced Phishing Framework)"
        echo "14) Malicious QR Generator"
        echo "15) Storm-Breaker"
        echo "16) ShellPhish"
        echo "17) Grabcam (Camera Theft Page)"
        echo "0) Back"
        echo ""
        read -p "Select Tool Number: " opt

        case $opt in
            1) install_tool https://github.com/htr-tech/zphisher zphisher ;;
            2) install_tool https://github.com/DarkSecDevelopers/HiddenEye hiddeneye ;;
            3) install_tool https://github.com/htr-tech/nexphisher nexphisher ;;
            4) install_tool https://github.com/blackeye-official/blackeye blackeye ;;
            5) install_tool https://github.com/Ignitetch/AdvPhishing advphishing ;;
            6) install_tool https://github.com/UndeadSec/SocialFish socialfish ;;
            7) install_tool https://github.com/M4cs/ShadowPhisher shadowphisher ;;
            8) install_tool https://github.com/KevinJClark/king-phisher kingphisher ;;
            9) install_tool https://github.com/FDX100/phisherman phisherman ;;
            10) install_tool https://github.com/thewhiteh4t/seeker seeker ;;
            11) install_tool https://github.com/thelinuxchoice/saycheese saycheese ;;
            12) install_tool https://github.com/vaidikbhai/qrphish qrphish ;;
            13) install_tool https://github.com/kgretzky/evilginx2 evilginx2 ;;
            14) install_tool https://github.com/s0md3v/Corsy malicious-qr ;;
            15) install_tool https://github.com/ultrasecurity/Storm-Breaker stormbreaker ;;
            16) install_tool https://github.com/shellphish/shellphish shellphish ;;
            17) install_tool https://github.com/thelinuxchoice/grabcam grabcam ;;
            0) break ;;
            *) echo "Invalid"; sleep 1 ;;
        esac
    done
}

show_phishing_menu
