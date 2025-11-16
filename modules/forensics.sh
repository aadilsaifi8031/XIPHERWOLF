#!/data/data/com.termux/files/usr/bin/bash

BASE_DIR=~/XIPHER/tools/forensics
mkdir -p "$BASE_DIR"
cd "$BASE_DIR"

install_tool() {
    repo=$1
    folder=$2
    echo -e "\e[1;92m[+] Installing: $folder\e[0m"
    git clone "$repo" "$folder"
}

show_forensics_menu() {
    while true; do
        clear
        echo -e "\e[1;96m====== DIGITAL FORENSICS MODULE – 30 TOOLS ======\e[0m"
        echo ""
        echo "1) Autopsy"
        echo "2) Sleuthkit"
        echo "3) Binwalk"
        echo "4) ExifTool"
        echo "5) Foremost Recovery"
        echo "6) Scalpel Recovery"
        echo "7) Volatility"
        echo "8) Volatility3"
        echo "9) Dumpzilla"
        echo "10) Bulk Extractor"
        echo "11) Hashdeep"
        echo "12) pdf-parser"
        echo "13) peepdf"
        echo "14) Yara"
        echo "15) Strings Analyzer"
        echo "16) Stegseek"
        echo "17) Steghide Tools"
        echo "18) PcapXray"
        echo "19) NetworkMiner (Lite Scripts)"
        echo "20) OSForensics Scripts"
        echo "21) Memoryze Scripts"
        echo "22) Capa (Malware Features)"
        echo "23) FireEye Flare VM Tools"
        echo "24) RegRipper"
        echo "25) MFT Parser"
        echo "26) Shellbags Parser"
        echo "27) Mobile Forensics Kit"
        echo "28) SQLite Forensics"
        echo "29) Email Header Analyzer"
        echo "30) Log File Analyzer"
        echo "0) Back"
        echo ""

        read -p "Select Tool Number: " opt

        case $opt in
            1) install_tool https://github.com/sleuthkit/autopsy autopsy ;;
            2) install_tool https://github.com/sleuthkit/sleuthkit sleuthkit ;;
            3) install_tool https://github.com/ReFirmLabs/binwalk binwalk ;;
            4) install_tool https://github.com/exiftool/exiftool exiftool ;;
            5) install_tool https://github.com/korczis/foremost foremost ;;
            6) install_tool https://github.com/sleuthkit/scalpel scalpel ;;
            7) install_tool https://github.com/volatilityfoundation/volatility volatility ;;
            8) install_tool https://github.com/volatilityfoundation/volatility3 volatility3 ;;
            9) install_tool https://github.com/Busindre/dumpzilla dumpzilla ;;
            10) install_tool https://github.com/simsong/bulk_extractor bulkextractor ;;
            11) install_tool https://github.com/jessek/hashdeep hashdeep ;;
            12) install_tool https://github.com/DidierStevens/pdf-parser pdfparser ;;
            13) install_tool https://github.com/jesparza/peepdf peepdf ;;
            14) install_tool https://github.com/VirusTotal/yara yara ;;
            15) install_tool https://github.com/fireeye/strings strings ;;
            16) install_tool https://github.com/RickdeJager/stegseek stegseek ;;
            17) install_tool https://github.com/StefanoDeVuono/steghide steghide ;;
            18) install_tool https://github.com/Srinivas11789/PcapXray pcapxray ;;
            19) install_tool https://github.com/NetworkMiner/NetworkMiner networkminer ;;
            20) install_tool https://github.com/woj-ciech/OSForensics osforensics ;;
            21) install_tool https://github.com/mandiant/Memoryze memoryze ;;
            22) install_tool https://github.com/mandiant/capa capa ;;
            23) install_tool https://github.com/fireeye/flare-vm flarevm ;;
            24) install_tool https://github.com/keydet89/RegRipper reg_ripper ;;
            25) install_tool https://github.com/dkovar/mft mftparser ;;
            26) install_tool https://github.com/williballenthin/shellbags shellbags ;;
            27) install_tool https://github.com/MobSF/Mobile-Security-Framework-MobSF mobile-forensics ;;
            28) install_tool https://github.com/sqlitebrowser/sqlitebrowser sqlite-forensics ;;
            29) install_tool https://github.com/lammertb/ethercodes email-analyzer ;;
            30) install_tool https://github.com/kd8bny/log-file-analyzer log-analyzer ;;
            0) break ;;
            *) echo "Invalid"; sleep 1 ;;
        esac
    done
}

show_forensics_menu
