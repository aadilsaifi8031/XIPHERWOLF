#!/data/data/com.termux/files/usr/bin/bash

BASE_DIR=~/XIPHER/tools/wireless
mkdir -p "$BASE_DIR"
cd "$BASE_DIR"

install_tool() {
    repo=$1
    folder=$2
    echo -e "\e[1;92m[+] Installing: $folder\e[0m"
    git clone "$repo" "$folder"
}

show_wireless_menu() {
    while true; do
        clear
        echo -e "\e[1;96m====== WIRELESS ATTACKS MODULE – 22 TOOLS ======\e[0m"
        echo ""
        echo "1) Wifite"
        echo "2) Aircrack-ng"
        echo "3) Airodump-ng"
        echo "4) Bettercap"
        echo "5) Wireshark (Termux version)"
        echo "6) Reaver (WPS Attack)"
        echo "7) Bully (WPS Attacker)"
        echo "8) Pixiewps"
        echo "9) Wifiphisher"
        echo "10) Fluxion"
        echo "11) EvilTwin Creator"
        echo "12) MDK3"
        echo "13) Kismet"
        echo "14) Cowpatty"
        echo "15) Fern Wifi Cracker"
        echo "16) Wifijammer"
        echo "17) 5G / LTE Sniffer"
        echo "18) Bluetooth Pentest Tools"
        echo "19) BlueBorne Scanner"
        echo "20) BLE Spoofer"
        echo "21) Wifi-HoneyPot"
        echo "22) Rogue AP Toolkit"
        echo "0) Back"
        echo ""

        read -p "Select Tool Number: " opt

        case $opt in
            1) install_tool https://github.com/derv82/wifite2 wifite ;;
            2) install_tool https://github.com/aircrack-ng/aircrack-ng aircrack-ng ;;
            3) install_tool https://github.com/aircrack-ng/aircrack-ng airodump-ng ;;
            4) install_tool https://github.com/bettercap/bettercap bettercap ;;
            5) install_tool https://github.com/termux-packet-tools/termux-wireshark wireshark ;;
            6) install_tool https://github.com/t6x/reaver-wps-fork-t6x reaver ;;
            7) install_tool https://github.com/kimocoder/bully bully ;;
            8) install_tool https://github.com/wiire/pixiewps pixiewps ;;
            9) install_tool https://github.com/wifiphisher/wifiphisher wifiphisher ;;
            10) install_tool https://github.com/FluxionNetwork/fluxion fluxion ;;
            11) install_tool https://github.com/sophron/wifiphisher eviltwin ;;
            12) install_tool https://github.com/wi-fi-analyzer/mdk3 mdk3 ;;
            13) install_tool https://github.com/kismetwireless/kismet kismet ;;
            14) install_tool https://github.com/joswr1ght/cowpatty cowpatty ;;
            15) install_tool https://github.com/savio-code/fern-wifi-cracker fern ;;
            16) install_tool https://github.com/DanMcInerney/wifijammer wifijammer ;;
            17) install_tool https://github.com/SigPloiter/sigploiter sigploiter ;;
            18) install_tool https://github.com/evilsocket/bleah bleah ;;
            19) install_tool https://github.com/ojasookert/CVE-BlueBorne blueborne ;;
            20) install_tool https://github.com/spacehuhntech/BLE-Spam ble-spam ;;
            21) install_tool https://github.com/hash3liZer/wifi-honeypot honey ;;
            22) install_tool https://github.com/wifiphisher/roguehostap rogue-ap ;;
            0) break ;;
            *) echo "Invalid Option"; sleep 1 ;;
        esac
    done
}

show_wireless_menu
