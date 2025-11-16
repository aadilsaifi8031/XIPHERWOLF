#!/data/data/com.termux/files/usr/bin/bash

BASE_DIR=~/XIPHER/tools/iot_cctv
mkdir -p "$BASE_DIR"
cd "$BASE_DIR"

install_tool() {
    repo=$1
    folder=$2
    echo -e "\e[1;92m[+] Installing: $folder\e[0m"
    git clone "$repo" "$folder"
}

show_iot_menu() {
    while true; do
        clear
        echo -e "\e[1;96m====== IoT / CCTV HACKING MODULE – 40 TOOLS ======\e[0m"
        echo ""
        echo "1) Shodan Python CLI"
        echo "2) Shodan-Dorker"
        echo "3) Censys Scanner"
        echo "4) Zoomeye Scanner"
        echo "5) ONVIF Camera Scanner"
        echo "6) CCTV Auto Finder"
        echo "7) Camera-Hack (Public Cams Search)"
        echo "8) RouterSploit Framework"
        echo "9) IoT Exploitation Framework"
        echo "10) Cam-Hammer Toolkit"
        echo "11) CCTV Bruteforce"
        echo "12) Default Router Password DB"
        echo "13) IoTSeeker"
        echo "14) DVR/IP-Cam Exploiter"
        echo "15) Mirai Scanner"
        echo "16) Mirai Botnet Builder (Edu)"
        echo "17) IoT-MassScanner"
        echo "18) CameraScan-Pro"
        echo "19) IPCam DB Extractor"
        echo "20) CCTV Admin Finder"
        echo "21) MAC-IP Camera Locator"
        echo "22) CCTV Capture Script"
        echo "23) RTSP URL Scanner"
        echo "24) RTSP Brute Tool"
        echo "25) DVR-BYPASS Toolkit"
        echo "26) CCTV Footage Downloader"
        echo "27) ONVIF Device Control"
        echo "28) CCTV Control Panel"
        echo "29) IoT Firmware Exploiter"
        echo "30) Firmware Mod Kit"
        echo "31) Jellyfin Camera Viewer"
        echo "32) Cloud-CCTV Scanner"
        echo "33) Hikvision Exploit Pack"
        echo "34) Dahua Exploit Pack"
        echo "35) TP-Link Exploit Pack"
        echo "36) Router Password Exploits"
        echo "37) IoT Wireless Attack Suite"
        echo "38) ESP8266/IoT Toolkit"
        echo "39) CCTV Full Toolkit"
        echo "40) COMPLETE IoT/CCTV HACK PACK"
        echo "0) Back"
        echo ""

        read -p 'Select Tool Number: ' opt

        case $opt in
            1) pip install shodan ;;
            2) install_tool https://github.com/winterrdog/Shodan-Dorker shodandorker ;;
            3) install_tool https://github.com/christophetd/censys-search censys ;;
            4) install_tool https://github.com/knownsec/ZoomEye-python zoomeye ;;
            5) install_tool https://github.com/FrostmanONVIF/ONVIF-Python onvif ;;
            6) install_tool https://github.com/cctvfinder/tool cctvfinder ;;
            7) install_tool https://github.com/AngelSecurityTeam/Cam-Hackers camhack ;;
            8) install_tool https://github.com/threat9/routersploit routersploit ;;
            9) install_tool https://github.com/rapid7/IoT-Exploits iotex ;;
            10) install_tool https://github.com/camhammer/tool camhammer ;;
            11) install_tool https://github.com/cctvbrute/bruteforce cctvbrute ;;
            12) install_tool https://github.com/routerdefaultpassword/rdp rdp ;;
            13) install_tool https://github.com/iotseeker/tool iotseeker ;;
            14) install_tool https://github.com/ipcamx/exploit ipcamx ;;
            15) install_tool https://github.com/jgamblin/Mirai-Source-Code miraiscan ;;
            16) install_tool https://github.com/mirai-builder/builder miraibuilder ;;
            17) install_tool https://github.com/IoTScanners/massscan iotmass ;;
            18) install_tool https://github.com/camscanpro/tool camscanpro ;;
            19) install_tool https://github.com/ipcamdb/extractor ipcamdb ;;
            20) install_tool https://github.com/cctvadminfinder/tool adminfinder ;;
            21) install_tool https://github.com/maclokator/maclokator maclok ;;
            22) install_tool https://github.com/cctvcapture/capture capture ;;
            23) install_tool https://github.com/_rtsp/rtsp-scanner rtsp ;;
            24) install_tool https://github.com/rtspbrute/bruter rtspbrute ;;
            25) install_tool https://github.com/dvr-bypass/tool dvrbypass ;;
            26) install_tool https://github.com/cctvdownloader/downloader cctvdown ;;
            27) install_tool https://github.com/onvifcontrol/control onvifctl ;;
            28) install_tool https://github.com/cctvpanel/panel cctvpanel ;;
            29) install_tool https://github.com/firmwareex/fex firmwareex ;;
            30) install_tool https://github.com/rampageX/firmware-mod-kit fmk ;;
            31) install_tool https://github.com/jellyfin/camviewer camviewer ;;
            32) install_tool https://github.com/cloudcctv/scan cloudcctv ;;
            33) install_tool https://github.com/hikvisionhack/exploit hikvision ;;
            34) install_tool https://github.com/dahuahack/exploit dahua ;;
            35) install_tool https://github.com/tplinkhack/exploit tplink ;;
            36) install_tool https://github.com/routerpassword/exploit routerexp ;;
            37) install_tool https://github.com/iotwireless/attacks wireless ;;
            38) install_tool https://github.com/esp8266toolkit/tool esp8266 ;;
            39) install_tool https://github.com/cctvtoolkit/full fulltoolkit ;;
            40) install_tool https://github.com/iotfullpack/full fulliot ;;
            0) break ;;
            *) echo "Invalid Option!"; sleep 1 ;;
        esac
    done
}

show_iot_menu
