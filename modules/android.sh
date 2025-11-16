#!/data/data/com.termux/files/usr/bin/bash

BASE_DIR=~/XIPHER/tools/android
mkdir -p "$BASE_DIR"
cd "$BASE_DIR"

install_tool() {
    repo=$1
    folder=$2
    echo -e "\e[1;92m[+] Installing: $folder\e[0m"
    git clone "$repo" "$folder"
}

show_android_menu() {
    while true; do
        clear
        echo -e "\e[1;96m====== ANDROID HACKING MODULE – 30 TOOLS ======\e[0m"
        echo ""
        echo "1) PhoneSploit Pro"
        echo "2) DroidCam Hack"
        echo "3) Cam-Hackers"
        echo "4) Android-PIN-Bruteforce"
        echo "5) Lockphish"
        echo "6) DroidHunter"
        echo "7) Ghost Framework"
        echo "8) ADB-Toolkit"
        echo "9) Evil-Droid"
        echo "10) SpyDroid"
        echo "11) MobSF"
        echo "12) Apktool"
        echo "13) APK Editor"
        echo "14) APK Decompiler"
        echo "15) ADB-Key-Bruter"
        echo "16) Metasploit-APK"
        echo "17) RAT-Hunter"
        echo "18) VirusX Android"
        echo "19) Termux-Apkmod"
        echo "20) Hermes"
        echo "21) ApkSigner"
        echo "22) ApkCrack"
        echo "23) AAFA (Frida Toolkit)"
        echo "24) Drozer"
        echo "25) Keydroid"
        echo "26) AndroBugs Framework"
        echo "27) ApkX Toolkit"
        echo "28) Objection"
        echo "29) Frida Framework"
        echo "30) Android Malware Analyzer (AMA)"
        echo "0) Back"
        echo ""

        read -p "Select Tool Number: " opt

        case $opt in
            1) install_tool https://github.com/luk-benchmark/PhoneSploit-Pro phonesploit ;;
            2) install_tool https://github.com/shubham1407/DroidCamHack droidcam ;;
            3) install_tool https://github.com/AngelSecurityTeam/Cam-Hackers camhack ;;
            4) install_tool https://github.com/urbanadventurer/Android-PIN-Bruteforce pinbrute ;;
            5) install_tool https://github.com/thelinuxchoice/lockphish lockphish ;;
            6) install_tool https://github.com/Mahmoud7Osman/DroidHunter droidhunter ;;
            7) install_tool https://github.com/entynetproject/ghost ghost ;;
            8) install_tool https://github.com/sundaysec/Android-Toolkit adbtoolkit ;;
            9) install_tool https://github.com/M4sc3r4n0/Evil-Droid evil-droid ;;
            10) install_tool https://github.com/sundowndev/PhoneInfoga spydroid ;;
            11) install_tool https://github.com/MobSF/Mobile-Security-Framework-MobSF mobsf ;;
            12) install_tool https://github.com/iBotPeaches/Apktool apktool ;;
            13) install_tool https://github.com/kha7iq/apk-editor apk-editor ;;
            14) install_tool https://github.com/pxb1988/dex2jar apk-decompiler ;;
            15) install_tool https://github.com/urbanadventurer/ADBKeyBrute adbkeybrute ;;
            16) install_tool https://github.com/rapid7/metasploit-framework metasploit-apk ;;
            17) install_tool https://github.com/IVR-Tools/RAT-Hunter rathunter ;;
            18) install_tool https://github.com/swagkarna/VirusX virusx ;;
            19) install_tool https://github.com/Hax4us/Apkmod termux-apkmod ;;
            20) install_tool https://github.com/FreelanceDev01/Hermes hermes ;;
            21) install_tool https://github.com/appium-boneyard/apksigner apksigner ;;
            22) install_tool https://github.com/adi0x90/ApkCrack apkcrack ;;
            23) install_tool https://github.com/AdityaTD/AAFA aafa ;;
            24) install_tool https://github.com/WithSecureLabs/drozer drozer ;;
            25) install_tool https://github.com/samsesh/Keydroid keydroid ;;
            26) install_tool https://github.com/AndroBugs/AndroBugs_Framework androbugs ;;
            27) install_tool https://github.com/b-mueller/apkx apkx ;;
            28) install_tool https://github.com/sensepost/objection objection ;;
            29) install_tool https://github.com/frida/frida frida ;;
            30) install_tool https://github.com/axrs/ama ama ;;
            0) break ;;
            *) echo "Invalid Option"; sleep 1 ;;
        esac
    done
}

show_android_menu
