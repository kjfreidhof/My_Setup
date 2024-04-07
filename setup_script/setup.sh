#!/usr/bin/env bash
d="doas"
s="sudo"
pkgs=("aria2" "audacity" "build-essential" "cmus" "curl" "wget" "firefox" "flac" "flameshot" "flatpak" "git" "neofetch" "libx11-dev" "libxft-dev" "libxinerama-dev" "mpv" "yt-dlp" "python3-pip" "pipx" "shotcut" "vim" "unzip" "zip" "p7zip" "p7zip-full" "xorg" "xserver-xorg")
rpkgs=("nano")

setup_system() {

	if command -v "$d" &> /dev/null; then 
		for rp in "${rpkgs[@]}";
		do
			"$d" apt-get remove "$rp"
			"$d" apt-get install "${pkgs[@]}"
			exit 0



		done 



		
		
		


	fi

	if command -v "$s" &> /dev/null; then
		for rp in "${rpkgs[@]}";
		do
			"$s" apt-get remove "$rp"
		        "$s" apt-get install "${pkgs[@]}"
			exit 0


		done


	else
		printf "Error: No sudo or doas installed exiting..."
		exit 1


	fi

}

setup_system
