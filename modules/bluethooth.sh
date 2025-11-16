#!/data/data/com.termux/files/usr/bin/bash

BASE_DIR=~/XIPHER/tools/bluetooth
mkdir -p "$BASE_DIR"
cd "$BASE_DIR"

install_tool() {
    repo=$1
    folder=$2
    echo -e "\e[1;92m[+] Installing: $folder\e[0m"
    git clone "$repo" "$folder"
}

show_bluetooth_menu() {
    while true; do
        clear
        echo -e "\e[1;96m====== BLUETOOTH ATTACKS MODULE – 25 TOOLS ======\e[0m"
        echo ""
        echo "1) BlueZ (Core Bluetooth Stack)"
        echo "2) hcitool (Scanner)"
        echo "3) btmgmt (Manager)"
        echo "4) btmon (Packet Sniffer)"
        echo "5) Bluesnarfer (Snarfing Tool)"
        echo "6) Bluebugger (AT Command Attack)"
        echo "7) SpoofTooph (MAC Spoofer)"
        echo "8) BtleJack (BLE Sniffer/Attack)"
        echo "9) Bettercap BLE Suite"
        echo "10) BLEAH (BLE Scanner/Enum Tool)"
        echo "11) Bluetool Scripts Pack"
        echo "12) Blue Hydra Scanner"
        echo "13) BlueDetect (Tracking Tool)"
        echo "14) BLE Key Tools"
        echo "15) Bluetooth File Sender (OBEX Push)"
        echo "16) Android-BLE-Scanner"
        echo "17) BLE-Prox (Proximity Spoof Test)"
        echo "18) BLE-Pwn (Experimental)"
        echo "19) BLE Spoof Advertiser"
        echo "20) HID Bluetooth Attack Tools"
        echo "21) BLE Device Map Generator"
        echo "22) BLE Service Dumper"
        echo "23) BLE Packet Analyzer"
        echo "24) BLE Wordlist Generator"
        echo "25) Complete Bluetooth Pack"
        echo "0) Back"
        echo ""

        read -p 'Select Tool Number: ' opt

        case $opt in
            1) pkg install bluez -y ;;
            2) pkg install bluez -y ;;
            3) pkg install bluez -y ;;
            4) pkg install bluez -y ;;
            5) install_tool https://github.com/khast3x/bluesnarfer bluesnarfer ;;
            6) install_tool https://github.com/chrizator/bluebugger bluebugger ;;
            7) install_tool https://github.com/walthowd/SpoofTooph spooftooph ;;
            8) install_tool https://github.com/virtualabs/btlejack btlejack ;;
            9) install_tool https://github.com/bettercap/bettercap bettercap ;;
            10) install_tool https://github.com/evilsocket/bleah bleah ;;
            11) install_tool https://github.com/darkarp/bluetool bluetool ;;
            12) install_tool https://github.com/zeroq/blue_hydra bluehydra ;;
            13) install_tool https://github.com/andrewmichaelsmith/BlueDetect bluedetect ;;
            14) install_tool https://github.com/evilsocket/btle-tools bletools ;;
            15) pkg install obexftp -y ;;
            16) install_tool https://github.com/espruino/EspruinoAndroidBLE androidble ;;
            17) install_tool https://github.com/meriac/ble-prox bleprox ;;
            18) install_tool https://github.com/ucsb-seclab/BLE-Pwn blepwn ;;
            19) install_tool https://github.com/I-SMELLY-CAT/ble-spoof ble_spoof ;;
            20) install_tool https://github.com/atakua/BTKeyboard btkeyboard ;;
            21) install_tool https://github.com/jackw01/ble-gatt-xml blemap ;;
            22) install_tool https://github.com/coinwise/ble-scan-dump bledump ;;
            23) install_tool https://github.com/google/bumble blepacket ;;
            24) install_tool https://github.com/wordlist/ble-wordlist bleword ;;
            25) install_tool https://github.com/bluetooth-hacking/fullpack fullpack ;;
            0) break ;;
            *) echo "Invalid Option!"; sleep 1 ;;
        esac
    done
}

show_bluetooth_menu
