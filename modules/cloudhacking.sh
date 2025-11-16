#!/data/data/com.termux/files/usr/bin/bash

BASE_DIR=~/XIPHER/tools/cloudhacking
mkdir -p "$BASE_DIR"
cd "$BASE_DIR"

install_tool() {
    repo=$1
    folder=$2
    echo -e "\e[1;92m[+] Installing: $folder\e[0m"
    git clone "$repo" "$folder"
}

show_cloud_menu() {
    while true; do
        clear
        echo -e "\e[1;96m====== CLOUD HACKING MODULE – 30 TOOLS ======\e[0m"
        echo ""
        echo "1) CloudEnum (AWS/GCP/Azure Scan)"
        echo "2) S3Scanner (AWS Buckets)"
        echo "3) GCP Bucket Scanner"
        echo "4) Azure Enum Tool"
        echo "5) CloudBrute"
        echo "6) Subfinder (Cloud DNS Recon)"
        echo "7) Assetfinder (Cloud Discovery)"
        echo "8) Cloudflare Real-IP Finder"
        echo "9) CrimeFlare Lookup"
        echo "10) Cloud Metadata Exploiter"
        echo "11) EC2 Metadata Grabber"
        echo "12) Firebase Database Scanner"
        echo "13) Firepwn Firebase Dump"
        echo "14) S3 Bucket Toolkit"
        echo "15) Cloud-LockBreaker"
        echo "16) DNSRecon"
        echo "17) Dork-Cloud (Google Dorks)"
        echo "18) Amass (Cloud Attack Surface)"
        echo "19) Subdomain-Takeover Scanner"
        echo "20) CloudLeak Hunter"
        echo "21) AWS Hunter Suite"
        echo "22) GCP Hunter Suite"
        echo "23) Azure Hunter Suite"
        echo "24) Cloud-nuke Toolkit"
        echo "25) BucketLoot Tool"
        echo "26) S3Viewer"
        echo "27) IP-Reveal Cloud Bypass"
        echo "28) Firebase-HackPack"
        echo "29) Cloud Tools – Full Bundle"
        echo "30) Complete Cloud Hacking Pack"
        echo "0) Back"
        echo ""

        read -p 'Select Tool Number: ' opt

        case $opt in
            1) install_tool https://github.com/initstring/cloud_enum cloud_enum ;;
            2) install_tool https://github.com/sa7mon/S3Scanner s3scanner ;;
            3) install_tool https://github.com/RhinoSecurityLabs/GCPBucketBrute gcpbucket ;;
            4) install_tool https://github.com/Azure/az-tools azuretools ;;
            5) install_tool https://github.com/0xsha/CloudBrute cloudbrute ;;
            6) install_tool https://github.com/projectdiscovery/subfinder subfinder ;;
            7) install_tool https://github.com/tomnomnom/assetfinder assetfinder ;;
            8) install_tool https://github.com/m0rtem/cloudflare-revealer cfreveal ;;
            9) install_tool https://github.com/Crimeflare/CrimeFlare crimeflare ;;
            10) install_tool https://github.com/MetaDataExploiter/MetaExploit metaexploit ;;
            11) install_tool https://github.com/EC2-Metadata/ec2grab ec2grab ;;
            12) install_tool https://github.com/shivsahni/FirebaseScanner fbscan ;;
            13) install_tool https://github.com/firepwn/firepwn firepwn ;;
            14) install_tool https://github.com/buckettoolkit/s3toolkit s3toolkit ;;
            15) install_tool https://github.com/lockbreaker/cloud-lockbreaker lockbreaker ;;
            16) pkg install dnsrecon -y ;;
            17) install_tool https://github.com/dorker/dork-cloud dorkcloud ;;
            18) install_tool https://github.com/OWASP/Amass amass ;;
            19) install_tool https://github.com/anshumanbh/subdomain-takeover takeover ;;
            20) install_tool https://github.com/cloudleakhunter/hunter cloudleakhunter ;;
            21) install_tool https://github.com/aws-hunter/aws-suite awssuite ;;
            22) install_tool https://github.com/gcp-hunter/gcp-suite gcpsuite ;;
            23) install_tool https://github.com/azure-hunter/azure-suite azsuite ;;
            24) install_tool https://github.com/cloudnuke/tool cloudnuke ;;
            25) install_tool https://github.com/lootcloud/bucketloot bucketloot ;;
            26) install_tool https://github.com/s3viewer/s3viewer s3viewer ;;
            27) install_tool https://github.com/ipreveal/cloud-bypass ipreveal ;;
            28) install_tool https://github.com/firebasehackpack/fbhackpack fbhack ;;
            29) install_tool https://github.com/cloudtools/bigpack cloudpack ;;
            30) install_tool https://github.com/cloudhacking/fullpack fullcloud ;;
            0) break ;;
            *) echo "Invalid Option!"; sleep 1 ;;
        esac
    done
}

show_cloud_menu
