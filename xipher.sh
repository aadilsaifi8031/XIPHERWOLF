#!/data/data/com.termux/files/usr/bin/bash
##############################################
#        XIPHER 7.0 ULTRA (HYBRID MODE)     #
#  50 Categories • 1000+ Tools • Modular     #
##############################################

GREEN="\e[1;92m"; RED="\e[1;91m"; CYAN="\e[1;96m"; YELLOW="\e[1;93m"; PURPLE="\e[1;95m"; RESET="\e[0m"

MODULE_DIR="$HOME/XIPHER/modules"
TOOL_DIR="$HOME/XIPHER/tools"

mkdir -p "$MODULE_DIR"
mkdir -p "$TOOL_DIR"

banner(){
clear
echo -e "$PURPLE
██╗  ██╗██╗██████╗ ██╗  ██╗███████╗██████╗ 
██║  ██║██║██╔══██╗██║  ██║██╔════╝██╔══██╗
███████║██║██████╔╝███████║█████╗  ██████╔╝
██╔══██║██║██╔═══╝ ██╔══██║██╔══╝  ██╔══██╗
██║  ██║██║██║     ██║  ██║███████╗██║  ██║
╚═╝  ╚═╝╚═╝╚═╝     ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
$CYAN-------------------------------------------------
       X I P H E R  •  7.0  •  U L T R A
   50 Categories • Modular • 1000+ Tools
-------------------------------------------------$RESET"
}

main_menu(){
while true; do
banner
echo -e "$YELLOW MAIN MENU$RESET"
echo -e "[1] Install Core Packages"
echo -e "[2] Fix Dependencies"
echo -e "[3] Browse Categories"
echo -e "[4] Search Tool"
echo -e "[0] Exit"
read -p "Choose: " op

case $op in
1) install_core ;;
2) fix_system ;;
3) list_categories ;;
4) search_tool ;;
0) exit ;;
*) echo -e "$RED Invalid Option!$RESET";;
esac
done
}

install_core(){
pkg update -y && pkg upgrade -y
pkg install -y git python python3 curl wget php ruby perl clang
}

fix_system(){
pkg install -y root-repo x11-repo game-repo
apt --fix-broken install -y
}

list_categories(){
banner
echo -e "$CYAN Available Categories:$RESET"
c=1
for file in "$MODULE_DIR"/*.sh; do
    fname=$(basename "$file" .sh)
    echo -e "[$c] $fname"
    categories[$c]=$fname
    ((c++))
done
echo -e "[0] Back"

read -p "Choose: " opt
[[ $opt -eq 0 ]] && return
load_module "${categories[$opt]}"
}

load_module(){
cat="$1"
bash "$MODULE_DIR/$cat.sh"
read -p "Press Enter..."
}

search_tool(){
read -p "Enter tool name: " name
grep -Rl "$name" "$MODULE_DIR"
}

main_menu
