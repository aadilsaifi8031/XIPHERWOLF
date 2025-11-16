#!/data/data/com.termux/files/usr/bin/bash

mkdir -p ~/XIPHER/tools/recon/$folder
cd ~/XIPHER/tools/recon/$folder

install_tool() {
    repo=$1
    folder=$2
    echo -e "\e[1;92m[+] Installing: $folder\e[0m"
    git clone "$repo" "$folder"
}

show_recon_menu() {
    while true; do
        clear
        echo -e "\e[1;96m====== RECON & SCANNING – 42 TOOLS ======\e[0m"
        echo ""
        echo "1) sqlmap"
        echo "2) dirsearch"
        echo "3) Sublist3r"
        echo "4) theHarvester"
        echo "5) SecLists"
        echo "6) nmap-vulners"
        echo "7) httpx"
        echo "8) naabu"
        echo "9) subfinder"
        echo "10) dnsx"
        echo "11) dalfox"
        echo "12) katana"
        echo "13) asnmap"
        echo "14) chaos"
        echo "15) notify"
        echo "16) dnsprobe"
        echo "17) Amass"
        echo "18) Photon"
        echo "19) joomscan"
        echo "20) nikto"
        echo "21) corsy"
        echo "22) xsstrike"
        echo "23) breacher"
        echo "24) gopherus"
        echo "25) crosslinked"
        echo "26) eyewitness"
        echo "27) whatweb"
        echo "28) pwnxss"
        echo "29) MapCIDR"
        echo "30) trickest-cve"
        echo "31) ntlm_theft"
        echo "32) massdns"
        echo "33) gf-patterns"
        echo "34) gf"
        echo "35) assetfinder"
        echo "36) meg"
        echo "37) unfurl"
        echo "38) httprobe"
        echo "39) anew"
        echo "40) gmapsapiscanner"
        echo "41) osmedeus"
        echo "0) Back"
        echo ""
        read -p "Select Tool Number: " opt

        case $opt in
            1) install_tool https://github.com/sqlmapproject/sqlmap sqlmap ;;
            2) install_tool https://github.com/maurosoria/dirsearch dirsearch ;;
            3) install_tool https://github.com/aboul3la/Sublist3r Sublist3r ;;
            4) install_tool https://github.com/laramies/theHarvester theHarvester ;;
            5) install_tool https://github.com/danielmiessler/SecLists SecLists ;;
            6) install_tool https://github.com/projectdiscovery/nmap-vulners nmap-vulners ;;
            7) install_tool https://github.com/projectdiscovery/httpx httpx ;;
            8) install_tool https://github.com/projectdiscovery/naabu naabu ;;
            9) install_tool https://github.com/projectdiscovery/subfinder subfinder ;;
            10) install_tool https://github.com/projectdiscovery/dnsx dnsx ;;
            11) install_tool https://github.com/projectdiscovery/dalfox dalfox ;;
            12) install_tool https://github.com/projectdiscovery/katana katana ;;
            13) install_tool https://github.com/projectdiscovery/asnmap asnmap ;;
            14) install_tool https://github.com/projectdiscovery/chaos chaos ;;
            15) install_tool https://github.com/projectdiscovery/notify notify ;;
            16) install_tool https://github.com/projectdiscovery/dnsprobe dnsprobe ;;
            17) install_tool https://github.com/OWASP/Amass amass ;;
            18) install_tool https://github.com/s0md3v/Photon photon ;;
            19) install_tool https://github.com/OWASP/joomscan joomscan ;;
            20) install_tool https://github.com/sullo/nikto nikto ;;
            21) install_tool https://github.com/s0md3v/Corsy corsy ;;
            22) install_tool https://github.com/s0md3v/XSStrike xsstrike ;;
            23) install_tool https://github.com/s0md3v/Breacher breacher ;;
            24) install_tool https://github.com/tarunkant/Gopherus gopherus ;;
            25) install_tool https://github.com/m8sec/CrossLinked crosslinked ;;
            26) install_tool https://github.com/RedSiege/EyeWitness eyewitness ;;
            27) install_tool https://github.com/urbanadventurer/WhatWeb whatweb ;;
            28) install_tool https://github.com/pwn0sec/PwnXSS pwnxss ;;
            29) install_tool https://github.com/projectdiscovery/MapCIDR mapcidr ;;
            30) install_tool https://github.com/trickest/cve cve ;;
            31) install_tool https://github.com/Greenwolf/ntlm_theft ntlm_theft ;;
            32) install_tool https://github.com/blechschmidt/massdns massdns ;;
            33) install_tool https://github.com/1ndianl33t/Gf-Patterns gf-patterns ;;
            34) install_tool https://github.com/tomnomnom/gf gf ;;
            35) install_tool https://github.com/tomnomnom/assetfinder assetfinder ;;
            36) install_tool https://github.com/tomnomnom/meg meg ;;
            37) install_tool https://github.com/tomnomnom/unfurl unfurl ;;
            38) install_tool https://github.com/tomnomnom/httprobe httprobe ;;
            39) install_tool https://github.com/tomnomnom/anew anew ;;
            40) install_tool https://github.com/ozguralp/gmapsapiscanner gmapsapiscanner ;;
            41) install_tool https://github.com/j3ssie/Osmedeus osmedeus ;;
            0) break ;;
            *) echo "Invalid"; sleep 1 ;;
        esac
    done
}

show_recon_menu
