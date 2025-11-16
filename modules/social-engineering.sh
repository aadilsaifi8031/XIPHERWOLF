#!/data/data/com.termux/files/usr/bin/bash

BASE_DIR=~/XIPHER/tools/socialengineering
mkdir -p "$BASE_DIR"
cd "$BASE_DIR"

install_tool() {
    repo=$1
    folder=$2
    echo -e "\e[1;92m[+] Installing: $folder\e[0m"
    git clone "$repo" "$folder"
}

show_se_menu() {
    while true; do
        clear
        echo -e "\e[1;96m====== SOCIAL ENGINEERING MODULE – 40 TOOLS ======\e[0m"
        echo ""
        echo "1) SocialFish"
        echo "2) BlackEye"
        echo "3) ZPhisher"
        echo "4) HiddenEye"
        echo "5) KingPhisher"
        echo "6) Setoolkit (Social Eng. Toolkit)"
        echo "7) NexPhisher"
        echo "8) QR Code Phisher"
        echo "9) EvilTrust"
        echo "10) SayCheese"
        echo "11) FotoSploit"
        echo "12) Storm-Breaker"
        echo "13) GrabCam"
        echo "14) Seeker (Location)"
        echo "15) LocationX"
        echo "16) Grabify Clone"
        echo "17) ShellPhish"
        echo "18) AdvPhishing"
        echo "19) CamPhish"
        echo "20) WifiPhish"
        echo "21) EvilQR Generator"
        echo "22) BlackMail Toolkit"
        echo "23) FakeMail Sender"
        echo "24) Email Bomber"
        echo "25) SMS Spoof Tools"
        echo "26) Call Spoof Scripts"
        echo "27) TDoS Tools"
        echo "28) Browser Exploitation Kits"
        echo "29) USB Rubber Ducky Payloads"
        echo "30) Payload All The Things"
        echo "31) LinkSpoof Generator"
        echo "32) WebJack"
        echo "33) BeEF Framework"
        echo "34) Social Engineering Dictionary Maker"
        echo "35) Evil USB Toolkit"
        echo "36) Trojan-Builders Pack"
        echo "37) Social Recon Tools"
        echo "38) Info-Stealer Generators"
        echo "39) Session Hijack Tools"
        echo "40) Full Social-Engineering Pack"
        echo "0) Back"
        echo ""

        read -p 'Select Tool Number: ' opt

        case $opt in
            1) install_tool https://github.com/UndeadSec/SocialFish socialfish ;;
            2) install_tool https://github.com/thelinuxchoice/blackeye blackeye ;;
            3) install_tool https://github.com/htr-tech/zphisher zphisher ;;
            4) install_tool https://github.com/DarkSecDevelopers/HiddenEye hiddeneye ;;
            5) install_tool https://github.com/securestate/king-phisher kingphisher ;;
            6) install_tool https://github.com/trustedsec/social-engineer-toolkit setoolkit ;;
            7) install_tool https://github.com/htr-tech/nexphisher nexphisher ;;
            8) install_tool https://github.com/samyoyo/qrphish qrphish ;;
            9) install_tool https://github.com/NoorQureshi/EvilTrust eviltrust ;;
            10) install_tool https://github.com/thelinuxchoice/saycheese saycheese ;;
            11) install_tool https://github.com/Black-Hell-Team/fotosploit fotosploit ;;
            12) install_tool https://github.com/ultrasecurity/Storm-Breaker stormbreaker ;;
            13) install_tool https://github.com/noob-hackers/grabcam grabcam ;;
            14) install_tool https://github.com/thewhiteh4t/seeker seeker ;;
            15) install_tool https://github.com/LocationX/locationx locationx ;;
            16) install_tool https://github.com/kutaykutlu/Grabify grabifyclone ;;
            17) install_tool https://github.com/khansaad1275/shellphish shellphish ;;
            18) install_tool https://github.com/Ignitetch/AdvPhishing advphishing ;;
            19) install_tool https://github.com/techchipnet/CamPhish camphish ;;
            20) install_tool https://github.com/wifiphisher/wifiphisher wifiphish ;;
            21) install_tool https://github.com/evilqr/evilqr evilqr ;;
            22) install_tool https://github.com/fakeblackmail/tool blackmail ;;
            23) install_tool https://github.com/ByCh4n/EmailSpoof emailsender ;;
            24) install_tool https://github.com/sameera-madushan/Email-Bomber emailbomber ;;
            25) install_tool https://github.com/smsspoof/smsspoof smsspoof ;;
            26) install_tool https://github.com/callspoof/callspoof callspoof ;;
            27) install_tool https://github.com/tdostools/tdos tdos ;;
            28) install_tool https://github.com/beefproject/beef beef ;;
            29) install_tool https://github.com/hak5darren/USB-Rubber-Ducky payloads ;;
            30) install_tool https://github.com/swisskyrepo/PayloadsAllTheThings pat ;;
            31) install_tool https://github.com/linkspoof/LinkSpoof linkspoof ;;
            32) install_tool https://github.com/webjack/webjack webjack ;;
            33) install_tool https://github.com/beefproject/beef-xss beefxss ;;
            34) install_tool https://github.com/wordlist/socialdict socialdict ;;
            35) install_tool https://github.com/evilusb/tool evilusb ;;
            36) install_tool https://github.com/trojanbuilder/tbuilder trojanbuilder ;;
            37) install_tool https://github.com/laramies/theHarvester socialrecon ;;
            38) install_tool https://github.com/infostealer/stealer stealer ;;
            39) install_tool https://github.com/hijacktools/sessionhijack hijack ;;
            40) install_tool https://github.com/socialengineering/toolkit sepack ;;
            0) break ;;
            *) echo "Invalid"; sleep 1 ;;
        esac
    done
}

show_se_menu
