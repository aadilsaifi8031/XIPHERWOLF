#!/data/data/com.termux/files/usr/bin/bash

BASE_DIR=~/XIPHER/tools/osint
mkdir -p "$BASE_DIR"
cd "$BASE_DIR"

install_tool() {
    repo=$1
    folder=$2
    echo -e "\e[1;92m[+] Installing: $folder\e[0m"
    git clone "$repo" "$folder"
}

show_osint_menu() {
    while true; do
        clear
        echo -e "\e[1;96m====== OSINT MODULE – 30 ADVANCED TOOLS ======\e[0m"
        echo ""
        echo "1) Sherlock (Username Finder)"
        echo "2) Holehe (Email to Social Check)"
        echo "3) Maigret"
        echo "4) PhoneInfoga"
        echo "5) Osintgram"
        echo "6) GHunt (Google OSINT)"
        echo "7) BlackBird (Username OSINT)"
        echo "8) EmailHarvester"
        echo "9) theHarvester"
        echo "10) Photon (Web Crawler)"
        echo "11) Spiderfoot"
        echo "12) Twint (Twitter OSINT)"
        echo "13) CloudEnum"
        echo "14) Recon-ng"
        echo "15) InfoSploit"
        echo "16) GitDorker"
        echo "17) GitLeaks"
        echo "18) Subfinder"
        echo "19) AssetFinder"
        echo "20) HostHunter"
        echo "21) Metabigor"
        echo "22) Shodan CLI"
        echo "23) Dnstwist"
        echo "24) URLScan Tool"
        echo "25) PasteHunter"
        echo "26) HoleSearch (Email Checker)"
        echo "27) WhatsMyName (User Search)"
        echo "28) FinalRecon"
        echo "29) SocialScan"
        echo "30) Skiptracer"
        echo "0) Back"
        echo ""

        read -p "Select Tool Number: " opt

        case $opt in
            1) install_tool https://github.com/sherlock-project/sherlock sherlock ;;
            2) install_tool https://github.com/megadose/holehe holehe ;;
            3) install_tool https://github.com/soxoj/maigret maigret ;;
            4) install_tool https://github.com/sundowndev/phoneinfoga phoneinfoga ;;
            5) install_tool https://github.com/Datalux/Osintgram osintgram ;;
            6) install_tool https://github.com/mxrch/GHunt ghunt ;;
            7) install_tool https://github.com/p1ngul1n0/blackbird blackbird ;;
            8) install_tool https://github.com/maldevel/EmailHarvester emailharvester ;;
            9) install_tool https://github.com/laramies/theHarvester theharvester ;;
            10) install_tool https://github.com/s0md3v/Photon photon ;;
            11) install_tool https://github.com/smicallef/spiderfoot spiderfoot ;;
            12) install_tool https://github.com/twintproject/twint twint ;;
            13) install_tool https://github.com/initstring/cloud_enum cloudenum ;;
            14) install_tool https://github.com/lanmaster53/recon-ng recon-ng ;;
            15) install_tool https://github.com/Info-Sec-Squad/InfoSploit infosploit ;;
            16) install_tool https://github.com/obheda12/GitDorker gitdorker ;;
            17) install_tool https://github.com/gitleaks/gitleaks gitleaks ;;
            18) install_tool https://github.com/projectdiscovery/subfinder subfinder ;;
            19) install_tool https://github.com/tomnomnom/assetfinder assetfinder ;;
            20) install_tool https://github.com/SpiderLabs/HostHunter hosthunter ;;
            21) install_tool https://github.com/j3ssie/metabigor metabigor ;;
            22) install_tool https://github.com/achillean/shodan-python shodan ;;
            23) install_tool https://github.com/elceef/dnstwist dnstwist ;;
            24) install_tool https://github.com/daffainfo/urlscan urlscan ;;
            25) install_tool https://github.com/kevthehermit/PasteHunter pastehunter ;;
            26) install_tool https://github.com/megadose/holehe holesearch ;;
            27) install_tool https://github.com/WebBreacher/WhatsMyName whatsmyname ;;
            28) install_tool https://github.com/thewhiteh4t/FinalRecon finalrecon ;;
            29) install_tool https://github.com/iojw/socialscan socialscan ;;
            30) install_tool https://github.com/xillwillx/skiptracer skiptracer ;;
            0) break ;;
            *) echo "Invalid Option"; sleep 1 ;;
        esac
    done
}

show_osint_menu
