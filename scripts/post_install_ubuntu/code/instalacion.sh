#!/bin/bash
clear
echo -e "\n\n\t\t\t\t\t\t\t   \e[38:5:13m**********\e[0m \e[1m\e[38:5:202mPlugins Instalation on Debian\e[0m \e[38:5:13m**********\e[0m"

echo -e "\e[1m\e[38:5:197m   Please choose a number: \e[0m\n"
PS3="option: "
select Menu in "Automatic Install" "Custom Install"
    do
        case $Menu in
# Choose Instalation Menu
            "Automatic Install")
            clear
                AutomaticInstall=0
                    while [ $AutomaticInstall -ne 3 ]; do
                        echo -e "\n\n\t\t\t\t\t\t\t   \e[38:5:13m**********\e[0m \e[1m\e[38:5:202mYOU CHOOSE AUTOMATIC INSTALL\e[0m \e[38:5:13m**********\e[0m"
                        echo -e "\n\t\e[1m\e[38:5:118mThe follow programms will be installed automatically"
                        echo -e "\n\t\e[1m\e[38:5:45m   1) pip\e[0m             \e[1m\e[36m11) bat\e[0m           \e[1m\e[36m21) gimp\e[0m"
                        echo -e "\t\e[1m\e[38:5:45m   2) curl\e[0m            \e[1m\e[36m12) tlp\e[0m           \e[1m\e[36m22) lolcat\e[0m"
                        echo -e "\t\e[1m\e[38:5:45m   3) wget\e[0m            \e[1m\e[36m13) neofetch\e[0m"       
                        echo -e "\t\e[1m\e[38:5:45m   4) git\e[0m             \e[1m\e[36m14) fortunes\e[0m"
                        echo -e "\t\e[1m\e[38:5:45m   5) Transmission\e[0m    \e[1m\e[36m15) cowsay\e[0m"
                        echo -e "\t\e[1m\e[38:5:45m   6) Trash-cli\e[0m       \e[1m\e[36m16) figlet\e[0m"
                        echo -e "\t\e[1m\e[38:5:45m   7) Zathura\e[0m         \e[1m\e[36m17) nano\e[0m"
                        echo -e "\t\e[1m\e[38:5:45m   8) ZSH\e[0m             \e[1m\e[36m18) cmatrix\e[0m"
                        echo -e "\t\e[1m\e[38:5:45m   9) Terminator\e[0m      \e[1m\e[36m19) flatpak\e[0m"
                        echo -e "\t\e[1m\e[38:5:45m  10) FireJail\e[0m        \e[1m\e[36m20) snapd\e[0m"
                        echo -e "\n\t\e[1m\e[38:5:197mDo you want to proceed with the install?\e[0m"
                        echo -e "\n\t\t\e[1m\e[38:5:46m[ 1 ] Yes\e[0m"
                        echo -e "\t\t\e[1m\e[38:5:46m[ 2 ] Not, back to Choose Menu\e[0m"
                        echo -e "\t\t\e[1m\e[38:5:46m[ 3 ] Exit Installation\e[0m\n"
                        read -p "Choose an option: " AutomaticInstall
                        case $AutomaticInstall in                                            
                            1) echo -e "\e[1m\e[38:5:46mInstalando...\e[0m\n" &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install pip -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install curl -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install wget -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install git -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install transmission-cli -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install trash-cli -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install zathura -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install zsh -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install terminator -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install firejail -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install bat -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install tlp -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install neofetch &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install fortunes -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install cowsay -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install figlet -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install nano -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install cmatrix -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install flatpak -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install snapd -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install gimp -y &&
                                sudo apt-get update && sudo apt-get upgrade && sudo apt-get install lolcat -y &&
                                echo -e "\e[1m\e[38:5:46mInstalation is finished\e[0m\n" && break;;
                            2) echo -e "\n\e[1m\e[38:5:197mPress [ Enter ] to back Menu \e[0m\n"; break;;
                            3) echo -e "\nBye!!!" && exit;;
                            *) echo -e "\n\e[1;5;31mYou have not chosen a valid option, Try again\e[0m\n"
                                AutomaticInstall=0;;
                        esac
                        echo -e "\e[38:5:46mPulsa [ Enter ] para contnuar\e[0m\n"
                        read -p ""
                        clear
                    done
            ;;
# Choose Instalation Menu 
            "Custom Install")
            clear
            echo -e "\n\t\t\t\t\t\t\t\t     \e[38:5:13m**********\e[0m \e[1m\e[38:5:197mMAIN MENU MANUAL INSTALL\e[0m \e[38:5:13m**********\e[0m\n"
            select opcion in "Terminals Menu" "LSD [Maual Instalation]" "Neofetch [Automatic]" "Nano [Automatic]" "Mega [Manual Instalations]" "7z [Automatic]" "Battery Laptop Improve [Automatic]" "SHAsum [Automatic]" "Tor Browser [Manual Instalation]" "Vivaldi Browser [Manual Instalation]" Git "ZSH [Automatic]" "OH-MY-ZSH [Automatic]" "ZSH-Autosuggestions [Automatic]" "ZSH-FastSyntax [Automatic]" "Errors and Help" "Back MAIN MENU"
            do
                case $opcion in
# Manual Install 1 Terminals Menu
                    "Terminals Menu")
                    clear
                    echo -e "\n\t\t\t\t\t\t\t\t    \e[38:5:13m********\e[0m \e[0m \e[1m\e[38:5:197mTerminals Menu\e[0m \e[38:5:13m********\e[0m\n"
                    echo -e "\e[1m\e[38:5:197m   Please choose an option for install or more details\e[0m\n"
                        select terminals in Terminator Tilix Alacrity iTerm2 Kitty "Back Main Menu"
                            do
                                case $terminals in
    # Menu Terminales-Terminator
                                    Terminator)
                                    clear
                                        echo -e "\n\n\n"
                                        echo -e "\t\t\t\e[38:5:197m88888888888 8888888888 8888888b.  888b     d888 8888888 888b    888        d8888 88888888888  .d88888b.  8888888b.\e[0m"
                                        echo -e "\t\t\t    \e[38:5:197m888     888        888   Y88b 8888b   d8888   888   8888b   888       d88888     888     d88Pi iY88b 888   Y88b\e[0m"
                                        echo -e "\t\t\t    \e[38:5:198m888     888        888    888 88888b.d88888   888   88888b  888      d88P888     888     888     888 888    888\e[0m"
                                        echo -e "\t\t\t    \e[38:5:198m888     8888888    888   d88P 888Y88888P888   888   888Y88b 888     d88P 888     888     888     888 888   d88P\e[0m"
                                        echo -e "\t\t\t    \e[38:5:199m888     888        8888888Pl  888 Y888P 888   888   888 Y88b888    d88P  888     888     888     888 8888888Pl\e[0m"
                                        echo -e "\t\t\t    \e[38:5:199m888     888        888 T88b   888  Y8P  888   888   888  Y88888   d88P   888     888     888     888 888 T88b\e[0m"
                                        echo -e "\t\t\t    \e[38:5:200m888     888        888  T88b  888   '   888   888   888   Y8888  d8888888888     888     Y88b. .d88P 888  T88b\e[0m"
                                        echo -e "\t\t\t    \e[38:5:200m888     8888888888 888   T88b 888       888 8888888 888    Y888 d88P     888     888      lY88888Pl  888   T88b\e[0m\n"
                                        echo -e "\t\t\t\t\t\t\t\t\t\e[38:5:46m[ AUTO INSTALATION ]\e[0m"
                                        echo -e '''\n\t\t\t\t\t\t\e[1;31mTerminator\e[0m \e[38:5:160mis an open-source terminal emulator programmed in Java. ━╤-╦︻[▀̿̿Ĺ̯̿̿▀̿ ̿]\e[0m
                                        \e[38:5:161mFeatures\e[0m 
                                            \e[38:5:161mIt allows you to organize multiple terminals in a single window, so that you can have several sessions open simultaneously.\e[0m
                                            \e[38:5:162mYou can write to multiple terminals simultaneously, this allows you to launch the same command in different sessions.\e[0m
                                            \e[38:5:162mIt has a large number of keyboard shortcuts with which to manage the terminals.\e[0m
                                            \e[38:5:163mYou can rearrange the window layout by dragging and dropping with the mouse.\e[0m
                                            \e[38:5:163mYou can save different layouts and profiles using the graphical interface.\e[0m
                                            \e[38:5:164mYou can take screenshots of a single terminal.\e[0m
                                            \e[38:5:164mSupports plugins.\e[0m
                                            \e[38:5:165mSupports tabs.\e[0m\n'''
                                            opcion=0
                                            while [ $opcion -ne 3 ]; do
                                                echo -e "\e[38:5:46mDo you want to install Terminator?\e[0m\n"
                                                echo -e "    \e[38:5:46m[ 1 ] Yes\e[0m"
                                                echo -e "    \e[38:5:46m[ 2 ] Not, back to Terminals Menu\e[0m"
                                                echo -e "    \e[38:5:46m[ 3 ] Exit installation\e[0m\n"
                                                #echo -e "\e[1m\e[38:5:197mChoose an option\e[0m"
                                                read -p "Choose an option: " opcion
                                                    case $opcion in                                            
                                                    1) echo -e "\e[38:5:46mInstalando...\e[0m\n" && sudo apt-get update && sudo apt-get upgrade &&
                                                    sudo add-apt-repository ppa:gnome-terminator && sudo apt-get install terminator ;;
                                                    2) echo -e "\n\e[1m\e[38:5:197mPress [ Enter ] to show Menu \e[0m\n"; break;;
                                                    3) echo -e "" && exit;;
                                                    *) echo -e "\n\e[1;5;31mYou have not chosen a valid option, Try again\e[0m\n"
                                                        opcion=0;;
                                                    esac
                                                echo -e "\e[38:5:46mPulsa [ Enter ] para contnuar\e[0m\n"
                                                read -p ""
                                                clear
                                            done
                                    ;;
    # Menu Terminales-Tilix
                                    Tilix)
                                    clear
                                        echo -e "Tilix is an advanced GTK3 tiling terminal emulator that follows the Gnome Human Interface Guidelines"
                                            opcion=0
                                            while [ $opcion -ne 3 ]; do
                                                echo -e "\e[38:5:46mDo you want to install Tilix?\e[0m\n"
                                                echo -e "    \e[38:5:46m[ 1 ] Yes\e[0m"
                                                echo -e "    \e[38:5:46m[ 2 ] Not, back to Terminals Menu\e[0m"
                                                echo -e "    \e[38:5:46m[ 3 ] Exit installation\e[0m\n"
                                                #echo -e "\e[1m\e[38:5:197mChoose an option\e[0m"
                                                read -p "Choose an option: " opcion
                                                    case $opcion in                                            
                                                    1) echo -e "\e[38:5:46mInstalando...\e[0m\n" && sudo apt-get update && sudo apt-get upgrade &&
                                                    sudo add-apt-repository ppa:gnome-terminator && sudo apt-get install tilix ;;
                                                    2) echo -e "\n\e[1m\e[38:5:197mPress [ Enter ] to back Terminals Menu \e[0m\n"; break;;
                                                    3) echo -e "" && exit;;
                                                    *) echo -e "\n\e[1;5;31mYou have not chosen a valid option, Try again\e[0m\n"
                                                        opcion=0;;
                                                    esac
                                                echo -e "\e[38:5:46mPulsa [ Enter ] para contnuar\e[0m\n"
                                                read -p ""
                                                clear
                                            done
                                    ;;
    # Menu Terminales-Alacrity
                                    Alacrity)
                                    clear
                                        echo -e "Alacrity is an advanced GTK3 tiling terminal emulator that follows the Gnome Human Interface Guidelines"
                                            opcion=0
                                            while [ $opcion -ne 3 ]; do
                                                echo -e "\e[38:5:46mDo you want to install Alacrity?\e[0m\n"
                                                echo -e "    \e[38:5:46m[ 1 ] Yes\e[0m"
                                                echo -e "    \e[38:5:46m[ 2 ] Not, back to Terminals Menu\e[0m"
                                                echo -e "    \e[38:5:46m[ 3 ] Exit installation\e[0m\n"
                                                #echo -e "\e[1m\e[38:5:197mChoose an option\e[0m"
                                                read -p "Choose an option: " opcion
                                                    case $opcion in                                            
                                                    1) echo -e "\e[38:5:46mInstalando...\e[0m\n" && sudo apt-get update && sudo apt-get upgrade &&
                                                    sudo add-apt-repository ppa:gnome-terminator && sudo apt-get install alacrity ;;
                                                    2) echo -e "\n\e[1m\e[38:5:197mPress [ Enter ] to back Terminals Menu \e[0m\n"; break;;
                                                    3) echo -e "" && exit;;
                                                    *) echo -e "\n\e[1;5;31mYou have not chosen a valid option, Try again\e[0m\n"
                                                        opcion=0;;
                                                    esac
                                                echo -e "\e[38:5:46mPulsa [ Enter ] para contnuar\e[0m\n"
                                                read -p ""
                                                clear
                                            done
                                    ;;
    # Menu Terminales-iTerm2
                                    iTerm2)
                                    clear
                                        echo -e "iTerm2 is an advanced GTK3 tiling terminal emulator that follows the Gnome Human Interface Guidelines"
                                            opcion=0
                                            while [ $opcion -ne 3 ]; do
                                                echo -e "\e[38:5:46mDo you want to install iTerm2?\e[0m\n"
                                                echo -e "    \e[38:5:46m[ 1 ] Yes\e[0m"
                                                echo -e "    \e[38:5:46m[ 2 ] Not, back to Terminals Menu\e[0m"
                                                echo -e "    \e[38:5:46m[ 3 ] Exit installation\e[0m\n"
                                                #echo -e "\e[1m\e[38:5:197mChoose an option\e[0m"
                                                read -p "Choose an option: " opcion
                                                    case $opcion in                                            
                                                    1) echo -e "\e[38:5:46mInstalando...\e[0m\n" && sudo apt-get update && sudo apt-get upgrade &&
                                                    sudo add-apt-repository ppa:gnome-terminator && sudo apt-get install iTerm2 ;;
                                                    2) echo -e "\n\e[1m\e[38:5:197mPress [ Enter ] to back Terminals Menu \e[0m\n"; break;;
                                                    3) echo -e "" && exit;;
                                                    *) echo -e "\n\e[1;5;31mYou have not chosen a valid option, Try again\e[0m\n"
                                                        opcion=0;;
                                                    esac
                                                echo -e "\e[38:5:46mPulsa [ Enter ] para contnuar\e[0m\n"
                                                read -p ""
                                                clear
                                            done
                                    ;;
    # Menu Terminales-Kitty
                                    Kitty)
                                    clear
                                        echo -e "Kitty is an advanced GTK3 tiling terminal emulator that follows the Gnome Human Interface Guidelines"
                                            opcion=0
                                            while [ $opcion -ne 3 ]; do
                                                echo -e "\e[38:5:46mDo you want to install Kitty?\e[0m\n"
                                                echo -e "    \e[38:5:46m[ 1 ] Yes\e[0m"
                                                echo -e "    \e[38:5:46m[ 2 ] Not, back to Terminals Menu\e[0m"
                                                echo -e "    \e[38:5:46m[ 3 ] Exit installation\e[0m\n"
                                                #echo -e "\e[1m\e[38:5:197mChoose an option\e[0m"
                                                read -p "Choose an option: " opcion
                                                    case $opcion in                                            
                                                    1) echo -e "\e[38:5:46mInstalando...\e[0m\n" && sudo apt-get update && sudo apt-get upgrade &&
                                                    sudo add-apt-repository ppa:gnome-terminator && sudo apt-get install Kitty ;;
                                                    2) echo -e "\n\e[1m\e[38:5:197mPress [ Enter ] to back Terminals Menu \e[0m\n"; break;;
                                                    3) echo -e "" && exit;;
                                                    *) echo -e "\n\e[1;5;31mYou have not chosen a valid option, Try again\e[0m\n"
                                                        opcion=0;;
                                                    esac
                                                echo -e "\e[38:5:46mPulsa [ Enter ] para contnuar\e[0m\n"
                                                read -p ""
                                                clear
                                            done
                                    ;;
    # Menu Terminales-Regresar al menu
                                    "Back Main Menu")
                                    clear
                                        echo -e "Press [ Enter ] to two times to retun MAIN MENU MANUAL INSTALL:"
                                        read a
                                        break
                                    ;;
                                    *)  echo -e "\n\e[1;5;31mYou have not chosen a valid option, Try again\e[0m \n\n\e[0;96mPlease select an option between (1..6)!\e[0m \e[38:5:220mPress\e[0m \e[38:5:46m[ Enter ]\e[0m \e[38:5:220mto show Terminals Menu\e[0m";;
                                esac
                            done
                    ;;
# 2 LSDS
                    "LSD [Maual Instalation]")
                    clear
                        echo -e "\n\n"
                        echo -e "\t\t\t\e[38:5:2m888\e[0m       \e[38:5:3m.d8888b.\e[0m  \e[38:5:1m8888888b.\e[0m            \e[38:5:4m.d88\e[0m   \e[38:5:5m888\e[0m               \e[38:5:7m888\e[0m          \e[38:5:2m888\e[0m          \e[38:5:3m888\e[0m                            \e[38:5:6m88b.\e[0m"
                        echo -e "\t\t\t\e[38:5:2m888\e[0m      \e[38:5:3md88P  Y88b\e[0m \e[38:5:1m888  lY88b\e[0m          \e[38:5:4md88P\e[0m    \e[38:5:5m888\e[0m               \e[38:5:7m888\e[0m          \e[38:5:2m888\e[0m          \e[38:5:3m888\e[0m                              \e[38:5:6mY88b\e[0m"
                        echo -e "\t\t\t\e[38:5:2m888\e[0m      \e[38:5:3mY88b.\e[0m      \e[38:5:1m888    888\e[0m         \e[38:5:4md88P\e[0m     \e[38:5:5m888\e[0m               \e[38:5:7m888\e[0m          \e[38:5:2m888\e[0m          \e[38:5:3m888\e[0m                               \e[38:5:6mY88b\e[0m"
                        echo -e "\t\t\t\e[38:5:2m888\e[0m       \e[38:5:3mlY888b.\e[0m   \e[38:5:1m888    888\e[0m         \e[38:5:4m888\e[0m      \e[38:5:5m888\e[0m \e[38:5:6m.d8888b\e[0m   \e[38:5:7m.d88888\e[0m      \e[38:5:2m.d88888\e[0m  \e[38:5:1m.d88b.\e[0m  \e[38:5:3m888\e[0m \e[38:5:7m888  888\e[0m \e[38:5:4m888  888\e[0m  \e[38:5:5m.d88b.\e[0m      \e[38:5:6m888\e[0m"
                        echo -e "\t\t\t\e[38:5:2m888\e[0m          \e[38:5:3mlY88b.\e[0m \e[38:5:1m888    888\e[0m         \e[38:5:4m888\e[0m      \e[38:5:5m888\e[0m \e[38:5:6m88K\e[0m      \e[38:5:7md88  888\e[0m     \e[38:5:2md88  888\e[0m \e[38:5:1md8P  Y8b\e[0m \e[38:5:3m888\e[0m \e[38:5:7m888  888\e[0m  \e[38:5:4mY8bd8P\e[0m  \e[38:5:5md8P  Y8b\e[0m     \e[38:5:6m888\e[0m"
                        echo -e "\t\t\t\e[38:5:2m888\e[0m            \e[38:5:3ml888\e[0m \e[38:5:1m888    888\e[0m         \e[38:5:4mY88b\e[0m     \e[38:5:5m888\e[0m  \e[38:5:6mY8888b.\e[0m \e[38:5:7m888  888\e[0m     \e[38:5:2m888  888\e[0m \e[38:5:1m88888888\e[0m \e[38:5:3m888\e[0m \e[38:5:7m888  888\e[0m   \e[38:5:4mX88K\e[0m   \e[38:5:5m88888888\e[0m    \e[38:5:6md88P\e[0m"
                        echo -e "\t\t\t\e[38:5:2m888\e[0m      \e[38:5:3mY88b  d88P\e[0m \e[38:5:1m888  .d88P\e[0m          \e[38:5:4mY88b.\e[0m   \e[38:5:5m888\e[0m      \e[38:5:6mX88\e[0m \e[38:5:7mY88b 888\e[0m     \e[38:5:2mY88b 888\e[0m \e[38:5:1mY8b.\e[0m     \e[38:5:3m888\e[0m \e[38:5:7mY88b 888\e[0m \e[38:5:4m.d8##8b.\e[0m \e[38:5:5mY8b.\e[0m      \e[38:5:6m.d88P\e[0m"
                        echo -e "\t\t\t\e[38:5:2m88888888\e[0m   \e[38:5:3mlY8888P\e[0m  \e[38:5:1m8888888P\e[0m             \e[38:5:4mlY88\e[0m   \e[38:5:5m888\e[0m  \e[38:5:6m88888P\e[0m   \e[38:5:7mlY88888\e[0m       \e[38:5:2mY88888\e[0m   \e[38:5:1m8888\e[0m    \e[38:5:3m888\e[0m  \e[38:5:7mY88888\e[0m \e[38:5:4m888   888\e[0m  \e[38:5:5mY8888\e[0m  \e[38:5:6mi88P\e[0m"
                        echo -e '''\n\n\t\t\t\t\t\t\t\t\e[38:5:220m\e[0m \e[38:5:46m[*** MANUAL INSTALATION ***]\e[0m\n\n
                        LSD (lsd Deluxe) this project is a rewrite of GNU "ls" with lot of added features like colors, icons, tree-view, more formatting options etc. 
                        The project is heavily inspired by the super colorls project.\n'''
                        echo -e '''
                            1.- Ir al repositorio de git \e[38:5:45mhttps://github.com/Peltoche/lsd#theme\e[0m
                            2.- Buscar la instalacion de acuerdo a la distribucion que tengamos y nos manda a un link:
                                \e[38:5:45mhttps://github.com/Peltoche/lsd/releases\e[0m
                            3.- Bajamos hasta la parte de "Assets" y buscamos algun "x64.deb" ya que lo en una distro derivada de Debian.
                            4.- Abrimos una terminal vamos al directorio donde se descargo el archivo ".deb" y escribimos el siguiente comando:
                                    \e[38:5:220m> sudo dpkg -i "nombre_del_archivo_lsd.deb"\e[0m
                                y listo podremos listar con el comando "lsd -l" y nos apareceran iconos y colores en los archivos.\n'''
                            echo -e "\t\t\e[38:5:46mTIP!!!\e[0m"
                        read -p "Press [Enter] to continue"
                            echo -e '''
                                A.- Dependiendo de la shell que tengamos (bash, zsh, etc), podemos asignar alias a algun comando para hacer mas agil la ejecucion.
                                    i.- En una terminal desde el directorio "home" escribimos:
                                        \e[38:5:220m> nano .zshrc\e[0m
                                    ii.- Al final del archivo ecribimos los "alias" que queramos, estos son alguno ejemplos:
                                        \e[38:5:220malias l="lsd -l"\e[0m
                                        \e[38:5:220malias ll="lsd -alps"\e[0m
                                        \e[38:5:220malias gs="git status"\e[0m
                                        \e[38:5:220malias up="sudo apt-get update && sudo apt-get upgrade"\e[0m\n'''
                                read -p "That's all information, Press [Enter] to return Menu"
                        echo -e "\n"
                        ;;
# 3 Neofetch
                    "Neofetch [Automatic]")
                        echo -e "\t\t\t\t\t\t\e[38:5:1m888b    888                    .d888          888             888\e[0m"
                        echo -e "\t\t\t\t\t\t\e[38:5:2m8888b   888                   d88Pl           888             888\e[0m"
                        echo -e "\t\t\t\t\t\t\e[38:5:3m88888b  888                   888             888             888\e[0m"
                        echo -e "\t\t\t\t\t\t\e[38:5:7m888Y88b 888  .d88b.   .d88b.  888888  .d88b.  888888  .d8888b 88888b.\e[0m"
                        echo -e "\t\t\t\t\t\t\e[38:5:8m888 Y88b888 d8P  Y8b d88/\88b 888    d8P  Y8b 888    d88P/    888 \88b\e[0m"
                        echo -e "\t\t\t\t\t\t\e[38:5:6m888  Y88888 88888888 888  888 888    88888888 888    888      888  888\e[0m"
                        echo -e "\t\t\t\t\t\t\e[38:5:5m888   Y8888 Y8b.     Y88..88P 888    Y8b.     Y88b.  Y88b.    888  888\e[0m"
                        echo -e "\t\t\t\t\t\t\e[38:5:4m888    Y888  \Y8888   \Y88P/  888     \Y8888   \Y888  \Y8888P 888  888\e[0m\n"
                        echo -e "\t\t\t\t\t\t\t\t\t\e[38:5:46m[ AUTO INSTALATION ]\e[0m"
                        echo -e '''\n\t\e[38:5:46mNeofetch\e[0m \e[38:5:154mis a command-line system information tool written in bash 3.2+. Neofetch displays information about your operating\e[0m
                        \e[38:5:155msystem, software and hardware in an aesthetic and visually pleasing way.\e[0m
                        \e[38:5:156mThe overall purpose of Neofetch is to be used in screen-shots of your system. Neofetch shows the information other people want to see.\e[0m
                        \e[38:5:157mThere are other tools available for proper system statistic/diagnostics.\e[0m\n'''
                            echo -e "\t\t\t\e[38:5:158mExample\n\e[0m"
                            echo -e "\t\t\t\t\t\e[1;32m                    'c.\e[0m          \e[38:5:7mKenny@skunkhunt42\e[0m"
                            echo -e "\t\t\t\t\t\e[1;32m                 ,xNMM.\e[0m          \e[38:5:8m---------------------------\e[0m"
                            echo -e "\t\t\t\t\t\e[1;32m               .OMMMMo\e[0m           \e[1;31mOS: Windows 11 Debian x86_64\e[0m"
                            echo -e "\t\t\t\t\t\e[1;32m               OMMM0,\e[0m            \e[1;32mKernel: 55.13.0-35-generic\e[0m"
                            echo -e "\t\t\t\t\t\e[1;32m     .;loddo:' loolloddol;.\e[0m      \e[1;33mUptime: 00 hours, 00 mins\e[0m"
                            echo -e "\t\t\t\t\t\e[1;32m   cKMMMMMMMMMMNWMMMMMMMMMM0:\e[0m    \e[1;34mShell: zsh Bash 1.0\e[0m"
                            echo -e "\t\t\t\t\t\e[1;33m .KMMMMMMMMMMMMMMMMMMMMMMMWd.    \e[38:5:13mDE: PantheonKDE\e[0m"
                            echo -e "\t\t\t\t\t\e[1;33m XMMMMMMMMMMMMMMMMMMMMMMMX.      \e[38:5:14mTerminal: terminator\e[0m"
                            echo -e "\t\t\t\t\t\e[1;31m;MMMMMMMMMMMMMMMMMMMMMMMM:       \e[38:5:129mCPU: Intel RYZEN Core i9 5900XKU (4) @ 25.300GHz\e[0m"
                            echo -e "\t\t\t\t\t\e[1;31m:MMMMMMMMMMMMMMMMMMMMMMMM:       \e[38:5:87mGPU: RTXK 5900\e[0m"
                            echo -e "\t\t\t\t\t\e[1;31m.MMMMMMMMMMMMMMMMMMMMMMMMX.      \e[38:5:220mMemory: 2692MiB / 87833MiB\e[0m"
                            echo -e "\t\t\t\t\t\e[1;31m kMMMMMMMMMMMMMMMMMMMMMMMMWd.    \e[38:5:202mDisk (/): 24G / 454G (6%)\e[0m"
                            echo -e "\t\t\t\t\t\e[1;35m .XMMMMMMMMMMMMMMMMMMMMMMMMMMk   \e[38:5:82mBattery0: 100% [Discharging]\e[0m"
                            echo -e "\t\t\t\t\t\e[1;35m  .XMMMMMMMMMMMMMMMMMMMMMMMMK.\e[0m"
                            echo -e "\t\t\t\t\t\e[1;34m     kMMMMMMMMMMMMMMMMMMMMMMd\e[0m"
                            echo -e "\t\t\t\t\t\e[1;34m      ;KMMMMMMMWXXWMMMMMMMk.\e[0m"
                            echo -e "\t\t\t\t\t\e[1;34m        .cooc,.    .,coo:.\e[0m\n\n"
                            read -p "Do you want to install Neofetch?: Yes[y] / Not[Any Key] / Exit[x] " ynx
                                case $ynx in
                                    [Yy]* ) sudo apt-get install neofetch ; sudo apt-get update ; sudo apt-get upgrade;;
                                    [Nn]* ) read -p "Press [Enter] to show Menu";;
                                    [Xx]* ) exit;;
                                    * ) echo -e "\e[1;36mPress\e[0m \e[38:5:46m[Enter]\e[0m \e[1;36mto show Menu\e[0m";;
                                esac
                        ;;
            # 4 Nano
                    "Nano [Automatic]")
                        
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m  GNU nano 4.8                                    New Buffer                                     \e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m 1\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m 2\e[0m                            \e[38:5:46m:::                        The\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m 3\e[0m              \e[38:5:46miLE88Dj.  :jD88888Dj:\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m 4\e[0m            \e[38:5:46m.LGitE888D.f8GjjjL8888E;       .d8888b.  888b    888 888     888\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m 5\e[0m            \e[38:5:46miE   :8888Et.     .G8888.     d88P  Y88b 8888b   888 888     888\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m 6\e[0m            \e[38:5:46m;i    E888,        ,8888,     888    888 88888b  888 888     888\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m 7\e[0m                  \e[38:5:46mD888,        :8888:     888        888Y88b 888 888     888\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m 8\e[0m                  \e[38:5:46mD888,        :8888:     888  88888 888 Y88b888 888     888\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m 9\e[0m                  \e[38:5:46mD888,        :8888:     888    888 888  Y88888 888     888\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m10\e[0m                  \e[38:5:46mD888,        :8888:     Y88b  d88P 888   Y8888 Y88b. .d88P\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m11\e[0m                  \e[38:5:46m888W,        :8888:      lY8888P88 888    Y888  lY88888Pi\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m12\e[0m                  \e[38:5:46mW88W,        :8888:\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m13\e[0m                  \e[38:5:46mW88W:        :8888:     88888b.   8888b.  88888b.   .d88b.\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m14\e[0m                  \e[38:5:46mDGGD:        :8888:     888 l88b     l88b 888 l88b d88^^88b\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m15\e[0m                               \e[38:5:46m:8888:     888  888 .d888888 888  888 888  888\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m16\e[0m                               \e[38:5:46m:W888:     888  888 888  888 888  888 Y88..88P\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m17\e[0m                               \e[38:5:46m:8888:     888  888 lY888888 888  888  lY88Pi\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m18\e[0m                                \e[38:5:46mE888i\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m19\e[0m                                \e[38:5:46mtW88D                 Text Editor\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m20\e[0m"
                        echo -e "\t\t\t\t\e[7m\e[38:5:46m21\e[0m                       \e[7m\e[38:5:46m[ Welcome to nano. For basic help, Press Ctrl+G. ]\e[0m"
                        echo -e "\t\t\t\t          \e[7m\e[38:5:46m^G\e[0m \e[38:5:46mGet Help\e[0m  \e[7m\e[38:5:46m^O\e[0m \e[38:5:46mWritrOut\e[0m  \e[7m\e[38:5:46m^R\e[0m \e[38:5:46mRead File\e[0m \e[7m\e[38:5:46m^Y\e[0m \e[38:5:46mPrev Page\e[0m \e[7m\e[38:5:46m^K\e[0m \e[38:5:46mCut Text\e[0m  \e[7m\e[38:5:46m^C\e[0m \e[38:5:46mCur Pos\e[0m"
                        echo -e "\t\t\t\t          \e[7m\e[38:5:46m^X\e[0m \e[38:5:46mExit\e[0m      \e[7m\e[38:5:46m^J\e[0m \e[38:5:46mJustify\e[0m   \e[7m\e[38:5:46m^W\e[0m \e[38:5:46mWhere is\e[0m  \e[7m\e[38:5:46m^V\e[0m \e[38:5:46mNext Page\e[0m \e[7m\e[38:5:46m^U\e[0m \e[38:5:46mUncut\e[0m     \e[7m\e[38:5:46m^T\e[0m \e[38:5:46mTo Spell\e[0m\n"
                        echo -e "\t\t\t\t\t\t\t\t\t\e[38:5:46m[ AUTO INSTALATION ]\e[0m\n"
                        echo -e '''\t\t\e[38:5:46mGNU nano is a text editor for Unix-like computing systems or operating environments using a command line interface.
                                It emulates the Pico text editor, part of the Pine email client, and also provides additional functionality. 
                                Unlike Pico, nano is licensed under the GNU General Public License (GPL). Released as free software by Chris 
                                Allegretta in 1999,nano became part of the GNU Project in 2001. The logo resembles the lowercase form of the 
                                Greek letter Eta (η).\e[0m\n'''
                            read -p "Do you want to install Nano?: Yes[y] / Not[Any Key] / Exit[x] " ynx
                                case $ynx in
                                    [Yy]* ) sudo apt-get install nano ; sudo apt-get update ; sudo apt-get upgrade;;
                                    [Nn]* ) read -p "Press [Enter] to show Menu";;
                                    [Xx]* ) exit;;
                                    * ) echo -e "\e[1;36mPress\e[0m \e[38:5:46m[Enter]\e[0m \e[1;36mto show Menu\e[0m";;
                                esac
                        ;;
            # 5 Mega
                    "Mega [Manual Instalations]")
                        echo -e "\t\t\t\t\e[1;37m\e[48:2:255:1:1m                                                                                                       \e[0m"
                        echo -e "\t\t\t\t\e[1;37m\e[48:2:255:1:1m                     .%%%%%%%%%%,                                                                      \e[0m"
                        echo -e "\t\t\t\t\e[1;37m\e[48:2:255:1:1m                 %%%&%%%%%%%%%%%%%%         888b     d888 8888888888  .d8888b.         d8888           \e[0m"
                        echo -e "\t\t\t\t\e[1;37m\e[48:2:255:1:1m               %%%%l \%#%%%%%%/ l%%%%       8888b   d8888 888        d88P  Y88b       d88888           \e[0m"
                        echo -e "\t\t\t\t\e[1;37m\e[48:2:255:1:1m              %%%%%l  \%%#%%%/  l%%%%%      88888b.d88888 888        888    888      d88P888           \e[0m"
                        echo -e "\t\t\t\t\e[1;37m\e[48:2:255:1:1m             *%%%%%l  .__\/__.  l%%%%%.     888Y88888P888 8888888    888            d88P 888           \e[0m"
                        echo -e "\t\t\t\t\e[1;37m\e[48:2:255:1:1m             .%%%%%l  l%%\/%%l  l%%%%%.     888 Y888P 888 888        888  88888    d88P  888           \e[0m"
                        echo -e "\t\t\t\t\e[1;37m\e[48:2:255:1:1m              %%%%%l__l%%%%%%l__l%%%%%      888  Y8P  888 888        888    888   d88P   888           \e[0m"
                        echo -e "\t\t\t\t\e[1;37m\e[48:2:255:1:1m               %%%%%%%%%%%%%%%%%%%%%%       888   V   888 888        Y88b  d88P  d8888888888           \e[0m"
                        echo -e "\t\t\t\t\e[1;37m\e[48:2:255:1:1m                 %%%%%%%%%%%%%%%%%%         888       888 8888888888  \88888P88 d88P     888           \e[0m"
                        echo -e "\t\t\t\t\e[1;37m\e[48:2:255:1:1m                    %%%%%%%%%%%%%                                                                      \e[0m"
                        echo -e "\t\t\t\t\e[1;37m\e[48:2:255:1:1m                                                                                                       \e[0m\n"
                        echo -e '''\t\t\t\t\t\t\t\t\e[38:5:46m[*** MANUAL INSTALATION ***]\e[0m\n
                        \e[1;37m\e[48:2:255:1:1m MEGA \e[0m es un servicio de almacenamiento en la nube que se utiliza para guardar, compartir o intercambiar archivos de forma libre.
                            Se puede acceder a el desde Windows, Mac OS X, Linux y desde cualquier dispositivo móvil con internet.
                        \e[1;37m\e[48:2:255:1:1m MEGA \e[0m es la versión mejorada de \e[1;7m\e[38:5:202m MegaUpload \e[0m, servicio de alojamiento de archivos creado por el informático Kim Dotcom en 
                            el año 2005 y que fue cerrado al igual que \e[1m\e[107;2;255;1;34m RapidShare \e[0m por el FBI, en una operación policial, por infracción de derechos de autor.\n
                            1.- Ir a al pagina de MEGA \e[38:5:45mhttps://mega.io\e[0m
                            2.- En la pestaña plataformas elegimos MEGA CMD \e[38:5:45mhttps://mega.io/cmd\e[0m
                            3.- Para saber que distribucion de linux tenemos, escribimos el siguiente comando en una terminal.
                                \e[38:5:220m> lsb_release -d\e[0m
                            4.- En la pestaña Linux elegimos la descarga para muestra distribucion y tambien nos dara el comando para instalarlo.
                                que generalmente es sudo apt install ./archivo_mega.deb
                            5.- Escribimos el comando de instalacion que nos dieron al momento de descargar y listo!!! ya podemos almacenar en la nube.\n'''
                        read -p "Press [Enter] to show more information"
                        echo -e '''
                            6.- Todos los comandos para interactuar con la terminal llevan \e[38:5:220m"mega-"\e[0m aqui estan los mas comunes:
                                \e[38:5:220m> mega-help\e[0m para mostrar los comandos
                                \e[38:5:220m> mega-help -ff\e[0m para mostrar mas informacion de uso de los comandos
                                \e[38:5:220m> mega-ls\e[0m para listar
                                \e[38:5:220m> mega-cd\e[0m para cambiar de directorio
                                \e[38:5:220m> mega-rm\e[0m para borrar archivos o directorios
                                \e[38:5:220m> mega-mkdir\e[0m para crear un directorio
                                \e[38:5:220m> mega-mv\e[0m para mover/renombrar archivos o directorios
                                \e[38:5:220m> mega-put -c directorio/archivo.txt\e[0m para subir un directorios/archivos
                                \e[38:5:220m> mega-get directorio/archivo.txt\e[0m para descargar directorios/archivos
                                \e[38:5:220m> mega-logout\e[0m para cerrar sesion
                                \e[38:5:220m> mega-login example@mail.com password \e[0m para iniciar sesion (cuando ya se tiene una cuenta)
                                \e[38:5:220m> mega-signup mail@mail.com password --name="John Smith" create account\e[0m para crear cuenta
                                nos llegara a nuestro correo un link para confirmar la creacion de la cuenta, copiamos el link y lo ponemos en el siguiente comando
                                \e[38:5:220m> mega-confirm url_to_confirm your_password\e[0m parar confirmar la cuenta
                            7.- Otra alternativa a \e[1;37m\e[48:2:255:1:1m MEGA \e[0m es "\e[3m\e[1m\e[107;97;255;1;44m ~MediaFire \e[0m aunque el proyecto no esta tan desarrollado para las terminales.
                            8.- Algunas de las ventajas de usar \e[1;37m\e[48:2:255:1:1m MEGA \e[0m desde una terminal, es que es mas rapido y no ejecuta java ni html, aunque si se debe tener 
                                conocimiento basico-medio de los comandos de la terminal para su uso.\n'''
                        read -p "That's all information, Press [Enter] to return Menu"
                        ;;
            # 6 7z
                    "7z [Automatic]")
                        echo -e "\t\t\t\t\t\t\t\t\t\t\e[38:5:46m[ AUTO INSTALATION ]\e[0m\n"
                        echo -e '''\t\t7z is a compressed archive file format that supports several different data compression, encryption and 
                                pre-processing algorithms. The 7z format initially appeared as implemented by the 7-Zip archiver. The 7-Zip 
                                program is publicly available under the terms of the GNU Lesser General Public License. The LZMA SDK 4.62 was 
                                placed in the public domain in December 2008.\n'''
                            read -p "Do you want to install 7z?: Yes[y] / Not[n] / Exit[x] " ynx
                                case $ynx in
                                    [Yy]* ) sudo apt-get install p7zip ; sudo apt-get update ; sudo apt-get upgrade;;
                                    [Nn]* ) read -p "Press [Enter] to show Menu";;
                                    [Xx]* ) exit;;
                                    * ) echo "Please answer yes or not: ";;
                                esac
                        ;;
            # 7 Battery Improve
                    "Battery Laptop Improve [Automatic]")
                            read -p "Do you want to install Battery Laptop Improve?: Yes[y] / Not[n] / Exit[x] " ynx
                                case $ynx in
                                    [Yy]* ) sudo add-apt-repository ppa:linrunner/tlp ; sudo apt-get install tlp tlp-rdw ; sudo apt-get update ; 
                                            sudo apt-get upgrade ; sudo tlp start;;
                                    [Nn]* ) read -p "Press [Enter] to show Menu";;
                                    [Xx]* ) exit;;
                                    * ) echo "Please answer yes or not: ";;
                                esac
                        ;;
            # 8 SHAsum
                    "SHAsum [Automatic]")
                            read -p "Do you want to install SHAsum?: Yes[y] / Not[n] / Exit[x] " ynx
                                case $ynx in
                                    [Yy]* ) sudo apt-get install coreutils ; sudo apt-get update ; 
                                            sudo apt-get upgrade;;
                                    [Nn]* ) read -p "Press [Enter] to show Menu";;
                                    [Xx]* ) exit;;
                                    * ) echo "Please answer yes or not: ";;
                                esac
                        ;;
            # 9 Tor Browser
                    "Tor Browser [Manual Instalation]")
                            read -p "Do you want to install Tor: Yes[y] / Not[n] / Exit[x] " ynx
                                case $ynx in
                                    [Yy]* ) sudo apt-get update ; sudo apt-get upgrade;;
                                    [Nn]* ) read -p "Press [Enter] to show Menu";;
                                    [Xx]* ) exit;;
                                    * ) echo "Please answer yes or not: ";;
                                esac
                        ;;
            # 10 Vivaldi Browser
                    "Vivaldi Browser [Manual Instalation]")
                        echo '''Vivaldi Browser [*** MANUAL INSTALATION ***]
                A.- For install Vivaldi Browser go to https://vivaldi.com/download/ and download the ".DEB" '''
                        read -p "Press [Enter] to continue"
                        ;;
            # 11 Git
                    Git)
                            read -p "Do you want to install Git?: Yes[y] / Not[n] / Exit[x] " ynx
                                case $ynx in
                                    [Yy]* ) sudo apt install git-all ; sudo apt-get update ; sudo apt-get upgrade;;
                                    [Nn]* ) read -p "Press [Enter] to show Menu";;
                                    [Xx]* ) exit;;
                                    * ) echo "Please answer yes or not: ";;
                                esac
                        ;;
            # 12 zsh
                    "ZSH [Automatic]")
                            read -p "Do you want to install ZSH?: Yes[y] / Not[n] / Exit[x] " ynx
                                case $ynx in
                                    [Yy]* ) sudo apt-get update ; sudo apt-get upgrade ; sudo apt-get zsh;;
                                    [Nn]* ) read -p "Press [Enter] to show Menu";;
                                    [Xx]* ) exit;;
                                    * ) echo "Please answer yes or not: ";;
                                esac
                        ;;
            # 13 OH-MY-ZSH
                    "OH-MY-ZSH [Automatic]")
                            read -p "Do you want to install ZSH?: Yes[y] / Not[n] / Exit[x] " ynx
                                case $ynx in
                                    [Yy]* ) sudo apt-get install wget ; apt-get install curl ; 
                                            sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" ;
                                            sudo apt-get update ; sudo apt-get upgrade;;
                                    [Nn]* ) read -p "Press [Enter] to show Menu";;
                                    [Xx]* ) exit;;
                                    * ) echo "Please answer yes or not: ";;
                                esac
                        ;;
            # 14 ZSH-Autosuggestions
                    "ZSH-Autosuggestions [Automatic]")
                            read -p '''Need install ZSH and GIT first !!!!!!
            Do you want to install ZSH-Autosuggestions?: Yes[y] / Not[n] / Exit[x] ''' ynx
                                case $ynx in
                                    [Yy]* ) git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ;
                                            sudo apt-get update ; sudo apt-get upgrade;;
                                    [Nn]* ) read -p "Press [Enter] to show Menu";;
                                    [Xx]* ) exit;;
                                    * ) echo "Please answer yes or not: ";;
                                esac
                        ;;
            # 15 ZSH-FastSyntax
                    "ZSH-FastSyntax [Automatic]") 
                            read -p '''Need install ZSH and GIT first !!!!!!
            Do you want to install ZSH-FastSyntax?: Yes[y] / Not[n] / Exit[x] ''' ynx
                                case $ynx in
                                    [Yy]* ) git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting ;
                                            sudo apt-get update ; sudo apt-get upgrade;;
                                    [Nn]* ) read -p "Press [Enter] to show Menu";;
                                    [Xx]* ) exit;;
                                    * ) echo "Please answer yes or not: ";;
                                esac
                        ;;
            # 16 Errors and Help
                    "Errors and Help")
                        echo '''Error PAA: Repository does not have a release file
                    This can be fixed by deleting the file that origin the error.
                    Solution 1:
                        > sudo add-apt-repository --remove ppa:[name]
                    Solution 2:
                        > root|etc|apt|sources.list.d
                        > sudo su rm "nombre_archivo"
                    Error
                    informacon de como instalar o desisntalar paquetes de uubuntu https://howtoinstall.co/'''
                    read -p "Press [Enter] to return Menu"
                        ;;
            # 17 Exit
                    "Back MAIN MENU")
                                    clear
                                        echo -e "Press [ Enter ] to two times to retun MAIN MENU"
                                        read a
                                        break
                                    ;;
                    *)
                        echo -e "\n\e[1;5;31mYou have not chosen a valid option, Try again\e[0m \n\n\e[0;96mPlease select an option between (1..18)!\e[0m \e[38:5:220mPress\e[0m \e[38:5:46m[Enter]\e[0m \e[38:5:220mto show Menu\e[0m";;
                    
                esac
            done
            ;;
        esac
    done
#instalar
#    terminal
#        wget (Pendiente)
#            Wget es una herramienta que nos permitirá la descarga de contenido que provienen de servidores web bajo protocolos 
#            como ftp o https. Para la gestión de estas descargas nos encontraremos con un comando que permite descargar fácilmente 
#            repositorios por muy complejos que sean además de otras tareas.
#            El comando wget ha sido desarrollado como un paquete de software totalmente gratuito gracias al cual podremos descargar 
#            archivos usando protocolos como HTTP, HTTPS, FTP y FTPS. Esto convierte en wget en una herramienta de línea de comandos 
#            no interactiva, la cual puede ser implementada en scripts, trabajos cron o bien en terminales que no cuentan con 
#            soporte de X-Windows.
#        curl (Pendiente)
#            Curl es una herramienta de línea de comandos que le permite transferir datos hacia o desde un servidor remoto. Con curl,
#            puede descargar o cargar datos utilizando uno de los protocolos compatibles, incluidos HTTP, HTTPS, SCP, SFTP y FTP.
#        cmatrix (Pendiente)
#            CMatrix es un programa simple que muestra las geniales líneas de desplazamiento de la matriz en el terminal como la 
#            popular película de ciencia ficción “The Matrix”. Está disponible en el centro de software de ubuntu o instálelo con la 
#            línea de comandos.
#        figlet (Pendiente)
#            FIGlet es una utilidad de para la terminal, simple en su uso y con la que crear banners de texto ASCII o letras grandes. 
#            Podremos crear estos banners utilizando varias tipografías, formadas por letras compuestas por conglomerados de 
#            caracteres ASCII más pequeños.
#               Instalar fuentes figlets (Pendiente)
#        lolcat (Pendiente)
#            Lolcat es una utilidad para Linux, BSD y OSX que concatena de manera similar al comando cat y le agrega colores de 
#            arcoíris. Lolcat se utiliza principalmente para colorear texto en forma de arco iris en la terminal de Linux.
#        caosay (Pendiente)
#        cbonsai (Pendiente)
#             cbonsai -l -t 1 -i
#        fortune (Pendiente)
#        power level 10k (Pendiente por eleccion vs ho-my-posh)
#        oh-my-posh (Pendiente por eleccion  entre power level 10k)
#        trsnamission Torrent (Pendiente)
#            sudo apt-get install transmission-cli
#               transmission-cli "arcvhivo.torrent"
#               transmission-cli "magnetlink debe estar entre comillas"
#	     youtubedl
#        gs 
#            comprimir archivo pdf
#                   gs -dNOPAUSE -dQUIET -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.6 -dPDFSETTINGS=/printer -sOutputFile=test.pdf rfc.pdf 
#        PDF Arranger (Pendiente)
#            Agrega o elimina hojas de un archivo
#                   sudo apt install pdfarranger
#        trash-cli (Pendiente) https://github.com/andreafrancia/trash-cli
#            trash-put           trash files and directories.
#            trash-empty         empty the trashcan(s).
#            trash-list          list trashed files.
#            trash-restore       restore a trashed file.
#            trash-rm            remove individual files from the trashcan.           
#                sudo apt install trash-cli
#                   alias tsh="trash"
#                   alias tshl="trash-list"
#                   alias tshe="trash-empty"
#        bat (pensiente)
#               sudo apt-get install bat
#        zathura (Pendiente)
#           sudo apt install zathura
#        Pantehon Tweaks (Pendinete)
#            Es una herramienta esencial para personalizar de manera fácil y segura la apariencia de Pantheon Desktop
#               sudo apt install software-properties-common
#               sudo add-apt-repository ppa:philip.scott/pantheon-tweaks
#               sudo apt-get update
#               sudo apt-get install pantheon-tweaks
#    proggramms & apps
#        vlc
#            skins vlc
#                skin https://addons.videolan.org/p/1580017
#            codecs de audio y video
#        telegram
#        spotify
#        LibreOffice (Pendiente)
#           instalacion
#               Descargar la version mas actual de la pagina oficial https://es.libreoffice.org/descarga/libreoffice/
#               tar zxvf LibreOffice_version_Linux_x86-deb.tar.gz 
#               cd LibreOffice_version_Linux_x86-deb/
#               cd DEBS/
#               sudo dpkg -i *.deb
#            Instalacion del idioma
#               descargar el paquete de idioma
#               tar zxvf (descomprimirlo)
#               cd DEBS/
#               sudo dpkg -i *.deb
#               Reiniciar office y listo estra en el idioma deseado
#        java
#            JDK
#            JRE
#        escanner (de impresoras)
#        visual studio code
#            Configuracion
#               Fuentes
#               Cursor
#            bash ide
#            bash debug
#            latex
#            python
#            spanish languague
#            rainbow brackets
#            rainbow brackets2
#            Viow color themes
#            CodeSnap
#            Ident Rainbow
#            Tokio Night Horizon
#            studio ghibli inspired themes
#            Settings Sync
#            Shebang Snipets
#        inkscape
#        gimp
#    Varios
#        fuentes
#            NerdFonts.com
#               meslo lgmdz
#               terminus
#               Hack
#               Moniod
#               Robot Mono
#        drivers para impresora
#        gnome look
#            themas
#            cursores
#            iconos
#------------------------------------------
# ---zsh configuracion---
#alias zc="nano ~/.zshrc"
#alias sz="source ~/.zshrc"
# ---terminal---
#alias l="lsd -l"
#alias ll="lsd -la"
#alias hd="history -c"
#alias up="sudo apt-get update && sudo apt-get upgrade"
#alias aut="sudo apt autoremove"
#alias cl="sudo apt autoclean && sudo apt autoremove"
#alias mkt="mkdir content exploit nmap"
# ---limpieza de cabezales---
#alias lcab="sudo escputil -c -u -r /dev/usb/lp0"
# ---transmission---
#alias torrent="transmission-cli"
#	example "transmission-cli file.torrent"
#	example "transmission-cli "mangetlink.magnet" "
# ---alias mega---
#alias ml="mega-ls"
#alias mt="mega-tree"
#alias mll="mega-ls -lah"
#alias mla="mega-ls -lah"
#alias mli="mega-login"
#alias mlo="mega-logout"
#alias mcd="mega-cd"
#alias mrm="mega-rm"
#alias mup="mega-put -c"
#alias mmk="mega-mkdir"
#alias mex="mega-export"
#alias mim="mega-import"
#alias mwi="mega-whoami"
#alias mdo="mega-get"
#alias mpw="mega-pwd"
# ---alias Git---
#alias gst="git status"
#alias gpl="git pull"
#alias gph="git push"
#alias gc="git clone"
# ---firejail---
#alias j="firejail"
#alias jf="firejail firefox"
#alias jz="firejail zathura"
#alias jv="firejail vlc"
# ---zathura pdf---
#alias pdf="zathura"
# 	Ctl + r "modo obscuro"
# ---bat---
#alias bat="batcat"
# ---metadata---
# identify "image.jpg"
# exiftool "image.png"
#	example "exiftool -all= imagen.jpg"
#	example to add gps "exiftool -exif:gpslatitude=»21.30″ -exif:gpslatituderef=S -exif:gpslongitude=»165.30″ -exif:gpslongituderef=E  image.png"
#---ytmdl---
#alias yt="ytmdl"
#	example ytmdl "name_song"
#	example ytmdl "name_song" by "author"
# ---youtube-dl
# alias ytd="youtube-dl"
# ---trash-cli---
#	trash-put           trash files and directories.
#	trash-empty         empty the trashcan(s).
#	trash-list          list trashed files.
#	trash-restore       restore a trashed file.
#	trash-rm	     remove individual files from the trashcan.
#alias tsh="trash"
#alias tshl="trash-list"
#alias tshe="trash-empty"
#alias tshr="trash-restore"
#alias tshm="trash-rm"
# ---gh eco---
# gh auth login
# gh auth logout
#alias gli="gh auth login"
#alias glo="gh auth logout"
#alias ge="gh eco"