#!/bin/bash

function single {
	echo -n "[>] Input id video: "; read id;
	youtube-dl -x --audio-format mp3 -o '%(uploader)s/%(title)s-%(id)s.%(ext)s' https://www.youtube.com/watch?v=$id
}

function playlist {
	echo -n "[>] Input id playlist: "; read id;
	youtube-dl -x --audio-format mp3 -o '%(playlist)s/%(title)s-%(id)s.%(ext)s' https://www.youtube.com/playlist?list=$id
}
cat << "EOF"
                      __          __                __   __
    __ __ ___  __ __ / /_ __ __  / /  ___  ____ ___/ /  / /
   / // // _ \/ // // __// // / / _ \/ -_)/___// _  /  / / 
   \_, / \___/\_,_/ \__/ \_,_/ /_.__/\__/      \_,_/  /_/  
  /___/                                                    
   -----Download Youtube Videos and Convert to MP3-----

EOF
echo ""
echo "[+] Options:"
echo "	1. video convert to mp3"
echo "	2. playlist convert to mp3"
echo ""
echo -n "[>] Please enter your choice: "
read option

case $option in
	1)
		single
		;;
	2)
		playlist
		;;
	*)
		echo "[!] Sorry, invalid input"
		;;
esac	
