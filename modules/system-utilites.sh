#!/data/data/com.termux/files/usr/bin/bash

BASE_DIR=~/XIPHER/tools/system_utilities
mkdir -p "$BASE_DIR"
cd "$BASE_DIR"

install_tool() {
    repo=$1
    folder=$2
    echo -e "\e[1;92m[+] Installing: $folder\e[0m"
    git clone "$repo" "$folder"
}

show_sys_menu() {
    while true; do
        clear
        echo -e "\e[1;96m====== FULL SYSTEM UTILITIES MODULE – 40 TOOLS ======\e[0m"
        echo ""
        echo "1) neofetch (System Info)"
        echo "2) htop (Process Monitor)"
        echo "3) btop++ (Advanced Monitor)"
        echo "4) fastfetch"
        echo "5) glances (Full System Stats)"
        echo "6) Screenfetch"
        echo "7) Cpu-Governor Control"
        echo "8) Storage Analyzer"
        echo "9) Device Sensors Reader"
        echo "10) Battery Info Toolkit"
        echo "11) WiFi-Manager"
        echo "12) NetSpeed Monitor"
        echo "13) ss / netstat Toolkit"
        echo "14) Ping Suite (MultiPing)"
        echo "15) Network Mapping Tools"
        echo "16) System Cleaner"
        echo "17) Log Cleaner"
        echo "18) Cache Auto-Clean"
        echo "19) Wipe Temp Files"
        echo "20) ADB Tools Bundle"
        echo "21) Termux Style Manager"
        echo "22) Font Installer"
        echo "23) Shell Upgrade Tools"
        echo "24) Termux Backup Tool"
        echo "25) Phone Backup Toolkit"
        echo "26) File Recovery Scripts"
        echo "27) Process Killer Tools"
        echo "28) Boot Animation Manager"
        echo "29) APK Tools Suite"
        echo "30) Zip / Tar Tools Suite"
        echo "31) Speedtest CLI"
        echo "32) DNS Tools Pack"
        echo "33) Auto IP Changer"
        echo "34) VPN Check Tools"
        echo "35) Termux API Tools"
        echo "36) Clipboard Tools"
        echo "37) Notification Tools"
        echo "38) Clipboard Monitor"
        echo "39) Full Utility Pack"
        echo "40) Complete System Toolkit"
        echo "0) Back"
        echo ""

        read -p 'Select Tool Number: ' opt

        case $opt in
            1) pkg install neofetch -y ;;
            2) pkg install htop -y ;;
            3) pkg install btop -y ;;
            4) pkg install fastfetch -y ;;
            5) pkg install glances -y ;;
            6) pkg install screenfetch -y ;;
            7) install_tool https://github.com/cpucontrol/governor cpuctl ;;
            8) install_tool https://github.com/storageanalyzer/tool storage ;;
            9) install_tool https://github.com/sensors/sensorread sensors ;;
            10) install_tool https://github.com/batteryinfo/termux battery ;;
            11) install_tool https://github.com/wifitoolkit/manage wifimgr ;;
            12) install_tool https://github.com/netspeed/monitor netspeed ;;
            13) pkg install net-tools -y ;;
            14) install_tool https://github.com/multiping/suite multiping ;;
            15) install_tool https://github.com/networkmap/nmap-lite netmap ;;
            16) install_tool https://github.com/syscleaner/cleaner sysclean ;;
            17) install_tool https://github.com/logcleaner/clean logs ;;
            18) install_tool https://github.com/cachecleaner/autoclean autoclean ;;
            19) install_tool https://github.com/tempwiper/wipe tempwipe ;;
            20) install_tool https://github.com/MasterDevX/Termux-ADB adbtools ;;
            21) install_tool https://github.com/termuxstyle/manager style ;;
            22) install_tool https://github.com/fontinstaller/tool fonts ;;
            23) install_tool https://github.com/shellupgrade/upgrade shellup ;;
            24) install_tool https://github.com/termuxbackup/backup termuxbackup ;;
            25) install_tool https://github.com/phonebackup/full phonebackup ;;
            26) install_tool https://github.com/filerecovery/recover filerecovery ;;
            27) install_tool https://github.com/killprocess/kill pkill ;;
            28) install_tool https://github.com/bootani/manager bootani ;;
            29) install_tool https://github.com/apktoolkit/apktools apktools ;;
            30) pkg install zip tar -y ;;
            31) pkg install speedtest-cli -y ;;
            32) install_tool https://github.com/dnstools/suite dnstools ;;
            33) install_tool https://github.com/ipchanger/auto ipchanger ;;
            34) install_tool https://github.com/vpncheck/check vpncheck ;;
            35) pkg install termux-api -y ;;
            36) install_tool https://github.com/clipboardtools/cliptool cliptool ;;
            37) install_tool https://github.com/notifymanager/tool notify ;;
            38) install_tool https://github.com/clipmonitor/monitor clipmon ;;
            39) install_tool https://github.com/fullutility/pack utilitypack ;;
            40) install_tool https://github.com/systemtoolkit/full fulltools ;;
            0) break ;;
            *) echo "Invalid Option!"; sleep 1 ;;
        esac
    done
}

show_sys_menu
