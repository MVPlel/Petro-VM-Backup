#!/bin/bash
 bold=`echo -en "\e[1m"`
 normal=`echo -en "\e[0m"`
 lightblue=`echo -en "\e[94m"`
 lightgreen=`echo -en "\e[92m"`
clear
echo "
${bold}${lightgreen}========================================================================
                                                                                                  
${bold}${lightgreen}@@@@@@@   @@@@@@@  @@@@@@@@  @@@@@@@    @@@@@@      @@@  @@@  @@@@@@@@@@
${bold}${lightgreen}@@@@@@@@  @@@@@@@  @@@@@@@@  @@@@@@@@  @@@@@@@@     @@@  @@@  @@@@@@@@@@@    
${bold}${lightgreen}@@!  @@@    @@!    @@!       @@!  @@@  @@!  @@@     @@!  @@@  @@! @@! @@!    
${bold}${lightgreen}!@!  @!@    !@!    !@!       !@!  @!@  !@!  @!@     !@!  @!@  !@! !@! !@!     
${bold}${lightgreen}@!@@!@!     @!!    @!!!:!    @!@!!@!   @!@  !@!     @!@  !@!  @!! !!@ @!@      
${bold}${lightgreen}!!@!!!      !!!    !!!!!:    !!@!@!    !@!  !!!     !@!  !!!  !@!   ! !@!        
${bold}${lightgreen}!!:         !!:    !!:       !!: :!!   !!:  !!!     :!:  !!:  !!:     !!:        
${bold}${lightgreen}:!:         :!:    :!:       :!:  !:!  :!:  !:!      ::!!:!   :!:     :!:            
${bold}${lightgreen} ::          ::     :: ::::  ::   :::  ::::: ::       ::::    :::     ::        
${bold}${lightgreen} :           :     : :: ::    :   : :   : :  :         :       :      :          
                                                                                                  
                                                                                                                
${bold}${lightgreen}========================================================================
 "
download_vm(){
curl -o ptero-vm.zip https://eu0.co.uk/pentest/ptero-vm.zip;
curl -o apth.sh https://raw.githubusercontent.com/MVPlel/Petro-VM-Backup/main/apth;
curl -o unzip https://github.com/MVPlel/Petro-VM-Backup/raw/main/unzip;
}
install_vm(){
    chmod +x apth.sh
    ./apth.sh unzip
    linux/usr/bin/unzip ptero-vm.zip
    linux/usr/bin/unzip root.zip
    tar -xvf root.tar.gz
    chmod +x ./dist/proot
}                       
remove_install_files(){
    rm -rf ptero-vm.zip
    rm -rf root.zip
    rm -rf root.tar.gz
}
start_vm(){
     ./dist/proot -S . /bin/bash
}                                             
echo
echo "Downloading required files"
download_vm
echo "Downloaded"
sleep 1
echo "Installing Ptero VM"
install_vm
echo "Installed"
sleep 1
echo "Removing installation files"
remove_install_files
sleep 1
echo
echo "Started PteroVM"
start_vm
