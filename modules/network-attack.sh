#!/data/data/com.termux/files/usr/bin/bash

BASE_DIR=~/XIPHER/tools/network-attacks
mkdir -p "$BASE_DIR"
cd "$BASE_DIR"

install_tool() {
    repo=$1
    folder=$2
    echo -e "\e[1;92m[+] Installing: $folder\e[0m"
    git clone "$repo" "$folder"
}

show_network_menu() {
    while true; do
        clear
        echo -e "\e[1;96m====== NETWORK ATTACKS MODULE – 60 TOOLS ======\e[0m"
        echo ""
        echo "1) Nmap"
        echo "2) Hping3"
        echo "3) Netcat"
        echo "4) Masscan"
        echo "5) Zmap"
        echo "6) ARPspoof"
        echo "7) Bettercap"
        echo "8) MITMf"
        echo "9) Ettercap"
        echo "10) DNSChef"
        echo "11) Responder"
        echo "12) MITMProxy"
        echo "13) P0f"
        echo "14) SSLStrip"
        echo "15) Yersinia"
        echo "16) DHCPStarv"
        echo "17) Scapy Toolkit"
        echo "18) TCPdump"
        echo "19) Sn1per"
        echo "20) Netdiscover"
        echo "21) Fpipe"
        echo "22) INetSim"
        echo "23) SniffJoke"
        echo "24) Evilgrade"
        echo "25) SMBmap"
        echo "26) Crackmapexec"
        echo "27) Impacket"
        echo "28) SMBclient Tools"
        echo "29) MSF Auxiliary Net Tools"
        echo "30) Slowloris"
        echo "31) GoldenEye"
        echo "32) Xerxes"
        echo "33) UFONet"
        echo "34) LOIC"
        echo "35) HOIC"
        echo "36) HULK"
        echo "37) TorHammer"
        echo "38) DDOS-Framework"
        echo "39) IPGeolocation"
        echo "40) Shodan-CLI"
        echo "41) Censys-CLI"
        echo "42) NetSnoop"
        echo "43) PacketStorm Tools"
        echo "44) NetExec Tools"
        echo "45) Angry IP Tools (script)"
        echo "46) NetRipper"
        echo "47) EvilNet"
        echo "48) Fsociety Network Pack"
        echo "49) NetAttack2"
        echo "50) Wifi-Pumpkin3 (LAN mode)"
        echo "51) LAN Turtle Scripts"
        echo "52) Dsniff Tools"
        echo "53) SSLScan"
        echo "54) Fscan"
        echo "55) RustScan"
        echo "56) XRay Network Scanner"
        echo "57) LNKSpy"
        echo "58) SMBScanner"
        echo "59) HTTPLoot"
        echo "60) FinalRecon (network mode)"
        echo "0) Back"
        echo ""

        read -p "Select Tool Number: " opt

        case $opt in
            1)  install_tool https://github.com/nmap/nmap nmap ;;
            2)  install_tool https://github.com/antirez/hping hping3 ;;
            3)  install_tool https://github.com/diegocr/netcat netcat ;;
            4)  install_tool https://github.com/robertdavidgraham/masscan masscan ;;
            5)  install_tool https://github.com/zmap/zmap zmap ;;
            6)  install_tool https://github.com/byt3bl33d3r/arp-spoof arpspoof ;;
            7)  install_tool https://github.com/bettercap/bettercap bettercap ;;
            8)  install_tool https://github.com/byt3bl33d3r/MITMf mitmf ;;
            9)  install_tool https://github.com/Ettercap/ettercap ettercap ;;
            10) install_tool https://github.com/iphelix/dnschef dnschef ;;
            11) install_tool https://github.com/lgandx/Responder responder ;;
            12) install_tool https://github.com/mitmproxy/mitmproxy mitmproxy ;;
            13) install_tool https://github.com/p0f/p0f p0f ;;
            14) install_tool https://github.com/moxie0/sslstrip sslstrip ;;
            15) install_tool https://github.com/tomac/yersinia yersinia ;;
            16) install_tool https://github.com/kamorin/DHCPStarv dhcpstarv ;;
            17) install_tool https://github.com/secdev/scapy scapy ;;
            18) install_tool https://github.com/the-tcpdump-group/tcpdump tcpdump ;;
            19) install_tool https://github.com/1N3/Sn1per sniper ;;
            20) install_tool https://github.com/alexxy/netdiscover netdiscover ;;
            21) install_tool https://github.com/daichif/FPipe fpipe ;;
            22) install_tool https://github.com/inetsim/inetsim inetsim ;;
            23) install_tool https://github.com/vecna/sniffjoke sniffjoke ;;
            24) install_tool https://github.com/infobyte/evilgrade evilgrade ;;
            25) install_tool https://github.com/ShawnDEvans/smbmap smbmap ;;
            26) install_tool https://github.com/byt3bl33d3r/CrackMapExec crackmapexec ;;
            27) install_tool https://github.com/SecureAuthCorp/impacket impacket ;;
            28) install_tool https://github.com/eduardonunesp/smbclient smb-tools ;;
            29) install_tool https://github.com/rapid7/metasploit-framework msf-net ;;
            30) install_tool https://github.com/gkbrk/slowloris slowloris ;;
            31) install_tool https://github.com/jseidl/GoldenEye goldeneye ;;
            32) install_tool https://github.com/sepehrdaddev/Xerxes xerxes ;;
            33) install_tool https://github.com/epsylon/ufonet ufonet ;;
            34) install_tool https://github.com/NewEraCracker/LOIC loic ;;
            35) install_tool https://github.com/colstrom/hoic hoic ;;
            36) install_tool https://github.com/grafov/hulk hulk ;;
            37) install_tool https://github.com/Karmaz95/torhammer torhammer ;;
            38) install_tool https://github.com/cyweb/hammer ddos-framework ;;
            39) install_tool https://github.com/maldevel/IPGeoLocation ipgeo ;;
            40) install_tool https://github.com/achillean/shodan-python shodan ;;
            41) install_tool https://github.com/censys/censys-python censys ;;
            42) install_tool https://github.com/x90skysn3k/netsnoop netsnoop ;;
            43) install_tool https://github.com/johnsmith-security/packetstorm packetstorm ;;
            44) install_tool https://github.com/GoVanguard/netexec netexec ;;
            45) install_tool https://github.com/marcusmonteiro/angryip angryip ;;
            46) install_tool https://github.com/NytroRST/NetRipper netripper ;;
            47) install_tool https://github.com/infosecguerrilla/EvilNet evilnet ;;
            48) install_tool https://github.com/Manisso/fsociety fsociety ;;
            49) install_tool https://github.com/chrizator/netattack2 netattack2 ;;
            50) install_tool https://github.com/Pumpkin-Dev/WiFi-Pumpkin3 pumpkin ;;
            51) install_tool https://github.com/hak5darren/lan-turtle turtle ;;
            52) install_tool https://github.com/360PegasusTeam/dsniff dsniff ;;
            53) install_tool https://github.com/rbsec/sslscan sslscan ;;
            54) install_tool https://github.com/shadow1ng/fscan fscan ;;
            55) install_tool https://github.com/RustScan/RustScan rustscan ;;
            56) install_tool https://github.com/chaitin/xray xray ;;
            57) install_tool https://github.com/microsoft/lnk-parser lnkspy ;;
            58) install_tool https://github.com/pentestmonkey/smbscan smbscan ;;
            59) install_tool https://github.com/diego-treitos/httploot httploot ;;
            60) install_tool https://github.com/thewhiteh4t/FinalRecon finalrecon ;;
            0) break ;;
            *) echo "Invalid"; sleep 1 ;;
        esac
    done
}

show_network_menu
