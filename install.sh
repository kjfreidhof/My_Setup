#!/bin/bash 

set -e

dmenu_path="dmenu/dmenu"
dwm_path="dwm/dwm"
st_path="st/st"
s="sudo"
d="doas"

install_setup() {
	if command -v "$s" &> /dev/null; then 
		cd "$dmenu_path" && "$s" make clean install && cd .. && cd ..
		cd "$dwm_path" && "$s" make clean install && cd .. && cd ..
		cd "$st_path" && "$s" make clean install && cd .. && cd .. 
		exit 0


	fi 


	if command -v "$d" &> /dev/null; then
		cd "$dmenu_path" && "$d" make clean install && cd .. && cd ..
		cd "$dwm_path" && "$d" make clean install && cd .. && cd ..
		cd "$st_path" && "$d" make clean install 
		exit 0


	else 
		printf "Error: No sudo or doas \n"
		exit 1

	fi



}

install_setup

