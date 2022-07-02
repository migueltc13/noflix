#!/bin/bash

echo -e "\nAuto install script for linux (using apt-get)\n"

# if you don't use apt as your package manager 
# check / install the following packages:
# - curl
# - npm
# - peerflix ($ npm install -g peerflix)

if [ "$EUID" -ne 0 ]
then
  echo -e "install.sh requires sudo privileges\nRun: sudo ./install.sh"
  exit 1
fi

echo "Note: You will need a updated bash to run notflix's scripts"
echo "      (this install.sh doesn't require a updated bash shell)"
echo
echo "      /bin/bash version: $BASH_VERSION"
echo "      Version required: At least 4.0.0"
echo
echo "      If you have a updated bash in other location"
echo "      then replace the first line in the notflix.sh script:"
echo "          < #!/bin/bash"
echo "          > #!/path/to/updated/bash"


echo -e "\ninstall.sh: Starting installation...\n"


echo "[*] apt install curl npm"
apt install curl npm
status=$?
if (( $status != 0 )); then
	echo "Something could have gone wrong... Maybe fix this:"
	echo "[*] apt install curl npm (exit status $status)"
fi

echo -n -e "\nDo you want to install vlc? (Recommended) [Y/n] "
read -s -n 1 INPUT
echo 
INPUT=$(echo "$INPUT" | tr "[:upper:]" "[:lower:]")
if [ "$INPUT" == "" ] || [ "$INPUT" == "y" ] ; then
	echo "[*] apt install vlc"
	apt install vlc
	status=$?
	if (( $status != 0 )); then
		echo "Something could have gone wrong... Maybe fix this:"
		echo "[*] apt install vlc (exit status $status)"
	fi
else 
	echo "Skipping vlc installation..."
fi

# TODO snap option for ubuntu
echo -e "\n[*] npm install -g peerflix"
npm install -g peerflix
status=$?
if (( $status != 0 )); then
	echo "Something could have gone wrong... Maybe fix this:"
	echo "[*] npm install -g peerflix (exit status $status)"
fi

echo -e "\ninstall.sh: Installation complete"
exit 0