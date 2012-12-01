# random Cyanide and Happiness comics from explosm.net
function cyanide() { display "$(wget -q http://explosm.net/comics/random/ -O - | grep -Po 'http://www.explosm.net/db/files/Comics/*/[^"]+(png|jpg|jpeg)')"; }

# pretend to be busy in office to enjoy a cup of coffee
function grepcolor()
{
cat /dev/urandom | hexdump -C | grep --color=auto "ca fe"
}

# get Futurama quotations from slashdot.org servers
alias futurama='curl -Is slashdot.org | sed -n '5p' | sed 's/^X-//''	

# the famous starwars ASCII version from telnet
alias starwars='telnet towel.blinkenlights.nl'							

# watch movies in ASCII (just direct to the video)
# needs libcaca0
alias termvideo='mplayer -vo caca'								