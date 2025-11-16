#!/data/data/com.termux/files/usr/bin/bash

BASE_DIR=~/XIPHER/tools/recon-auto
mkdir -p "$BASE_DIR"
cd "$BASE_DIR"

install_tool() {
    repo=$1
    folder=$2
    echo -e "\e[1;92m[+] Installing: $folder\e[0m"
    git clone "$repo" "$folder"
}

show_recon_auto_menu() {
    while true; do
        clear
        echo -e "\e[1;96m====== RECON AUTOMATION MODULE – 30 TOOLS ======\e[0m"
        echo ""
        echo "1) Osmedeus"
        echo "2) Nuclei"
        echo "3) Nuclei-Templates"
    echo "4) Jaeles"
        echo "5) AutoRecon"
        echo "6) XRay"
        echo "7) LinkFinder"
        echo "8) ParamSpider"
        echo "9) Arjun (Parameter Discovery)"
        echo "10) Katana (Automation Mode)"
        echo "11) Naabu Automation"
        echo "12) Subfinder Automation"
        echo "13) Masscan Automation"
        echo "14) ASNMap Automation"
        echo "15) Chaos Automation"
        echo "16) Dalfox Automation"
        echo "17) httpx Automation"
        echo "18) waybackurls"
        echo "19) gau (GetAllUrls)"
        echo "20) gospider"
        echo "21) hakrawler"
        echo "22) dirsearch-auto"
        echo "23) amass auto"
        echo "24) crt.sh AutoEnum"
        echo "25) assetfinder-auto"
        echo "26) GF-Automator"
        echo "27) XSStrike Auto"
        echo "28) ffuf-auto"
        echo "29) pwnxss-auto"
        echo "30) JSFinder Auto"
        echo "0) Back"
        echo ""

        read -p "Select Tool Number: " opt

        case $opt in
            1) install_tool https://github.com/j3ssie/Osmedeus osmedeus ;;
            2) install_tool https://github.com/projectdiscovery/nuclei nuclei ;;
            3) install_tool https://github.com/projectdiscovery/nuclei-templates nuclei-templates ;;
            4) install_tool https://github.com/jaeles-project/jaeles jaeles ;;
            5) install_tool https://github.com/Tib3rius/AutoRecon autorecon ;;
            6) install_tool https://github.com/chaitin/xray xray ;;
            7) install_tool https://github.com/GerbenJavado/LinkFinder linkfinder ;;
            8) install_tool https://github.com/devanshbatham/ParamSpider paramspider ;;
            9) install_tool https://github.com/s0md3v/Arjun arjun ;;
            10) install_tool https://github.com/projectdiscovery/katana katana-auto ;;
            11) install_tool https://github.com/projectdiscovery/naabu naabu-auto ;;
            12) install_tool https://github.com/projectdiscovery/subfinder subfinder-auto ;;
            13) install_tool https://github.com/robertdavidgraham/masscan masscan-auto ;;
            14) install_tool https://github.com/projectdiscovery/asnmap asnmap-auto ;;
            15) install_tool https://github.com/projectdiscovery/chaos chaos-auto ;;
            16) install_tool https://github.com/hahwul/dalfox dalfox-auto ;;
            17) install_tool https://github.com/projectdiscovery/httpx httpx-auto ;;
            18) install_tool https://github.com/tomnomnom/waybackurls waybackurls ;;
            19) install_tool https://github.com/lc/gau gau ;;
            20) install_tool https://github.com/jaeles-project/gospider gospider ;;
            21) install_tool https://github.com/hakluke/hakrawler hakrawler ;;
            22) install_tool https://github.com/maurosoria/dirsearch dirsearch-auto ;;
            23) install_tool https://github.com/OWASP/Amass amass-auto ;;
            24) install_tool https://github.com/nahamsec/crtndstry crt-auto ;;
            25) install_tool https://github.com/tomnomnom/assetfinder assetfinder-auto ;;
            26) install_tool https://github.com/1ndianl33t/Gf-Patterns gf-automator ;;
            27) install_tool https://github.com/s0md3v/XSStrike xsstrike-auto ;;
            28) install_tool https://github.com/ffuf/ffuf ffuf-auto ;;
            29) install_tool https://github.com/pwn0sec/PwnXSS pwnxss-auto ;;
            30) install_tool https://github.com/Threezh1/JSFinder jsfinder ;;
            0) break ;;
            *) echo "Invalid Option"; sleep 1 ;;
        esac
    done
}

show_recon_auto_menu
