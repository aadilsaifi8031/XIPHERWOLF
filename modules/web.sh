#!/data/data/com.termux/files/usr/bin/bash

BASE_DIR=~/XIPHER/tools/web
mkdir -p "$BASE_DIR"
cd "$BASE_DIR"

install_tool() {
    repo=$1
    folder=$2
    echo -e "\e[1;92m[+] Installing: $folder\e[0m"
    git clone "$repo" "$folder"
}

show_web_menu() {
    while true; do
        clear
        echo -e "\e[1;96m====== WEB APPLICATION HACKING – 30 TOOLS ======\e[0m"
        echo ""
        echo "1) Burp Suite (Termux Port)"
        echo "2) XSStrike"
        echo "3) SQLMap"
        echo "4) Dirsearch"
        echo "5) Subfinder"
        echo "6) Nuclei"
        echo "7) HTTPX"
        echo "8) Katana (Scanner)"
        echo "9) WhatWeb"
        echo "10) Nikto"
        echo "11) Wfuzz"
        echo "12) FFUF"
        echo "13) XSS-Loader"
        echo "14) DalFox (XSS Scanner)"
        echo "15) CRLF-Detector"
        echo "16) CORScanner"
        echo "17) Clickjacking-Tester"
        echo "18) WebTech Detector"
        echo "19) Photon"
        echo "20) Arjun (Parameter Finder)"
        echo "21) SSRFmap"
        echo "22) GitGraber"
        echo "23) Gf + Patterns"
        echo "24) Subjack"
        echo "25) HostHunter"
        echo "26) Knockpy"
        echo "27) Breacher"
        echo "28) CMSeek (CMS Scanner)"
        echo "29) Wappalyzer-CLI"
        echo "30) ZAP Baseline Scan"
        echo "0) Back"
        echo ""

        read -p "Select Tool Number: " opt

        case $opt in
            1) install_tool https://github.com/CoffeeSec/termux-burpsuite burpsuite ;;
            2) install_tool https://github.com/s0md3v/XSStrike xsstrike ;;
            3) install_tool https://github.com/sqlmapproject/sqlmap sqlmap ;;
            4) install_tool https://github.com/maurosoria/dirsearch dirsearch ;;
            5) install_tool https://github.com/projectdiscovery/subfinder subfinder ;;
            6) install_tool https://github.com/projectdiscovery/nuclei nuclei ;;
            7) install_tool https://github.com/projectdiscovery/httpx httpx ;;
            8) install_tool https://github.com/projectdiscovery/katana katana ;;
            9) install_tool https://github.com/urbanadventurer/WhatWeb whatweb ;;
            10) install_tool https://github.com/sullo/nikto nikto ;;
            11) install_tool https://github.com/xmendez/wfuzz wfuzz ;;
            12) install_tool https://github.com/ffuf/ffuf ffuf ;;
            13) install_tool https://github.com/kahoot/xss-loader xss-loader ;;
            14) install_tool https://github.com/hahwul/dalfox dalfox ;;
            15) install_tool https://github.com/whotwagner/crlfuzz crlf ;;
            16) install_tool https://github.com/s0md3v/CORScanner corscanner ;;
            17) install_tool https://github.com/mozillasecurity/coltri clickjack ;;
            18) install_tool https://github.com/ztgrace/webtech webtech ;;
            19) install_tool https://github.com/s0md3v/Photon photon ;;
            20) install_tool https://github.com/s0md3v/Arjun arjun ;;
            21) install_tool https://github.com/mazen160/ssrfmap ssrfmap ;;
            22) install_tool https://github.com/hisxo/gitGraber gitgraber ;;
            23) install_tool https://github.com/tomnomnom/gf gf ;;
            24) install_tool https://github.com/haccer/subjack subjack ;;
            25) install_tool https://github.com/SpiderLabs/HostHunter hosthunter ;;
            26) install_tool https://github.com/guelfoweb/knockpy knockpy ;;
            27) install_tool https://github.com/0xInfection/Breacher breacher ;;
            28) install_tool https://github.com/Tuhinshubhra/CMSeeK cmseek ;;
            29) install_tool https://github.com/wappalyzer/wappalyzer wappalyzer ;;
            30) install_tool https://github.com/zaproxy/zaproxy zap ;;
            0) break ;;
            *) echo "Invalid Option"; sleep 1 ;;
        esac
    done
}

show_web_menu
