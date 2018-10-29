#!/data/data/com.termux/files/usr/bin/bash

# Get the absolute path of the script ( should be located besides youtube_dl_cli.py )
DIR="$(cd "$(dirname "$0")" && pwd)"

# Create the bin directory if it does not already exists
mkdir -p ~/bin

# Create the termux url opener file ( and remove old one)
rm ~/bin/termux-url-opener
touch ~/bin/termux-url-opener

# Write the mandatory code into the file
printf '#!/data/data/com.termux/files/usr/bin/bash\nclear\nif [ $# -ge 2 ]; then\n' >> ~/bin/termux-url-opener
printf 'FILEPATH=$2\nelse\nFILEPATH="%s"\nfi\npython %s/youtube_dl_cli.py $1 $FILEPATH' $1 $DIR >> ~/bin/termux-url-opener
