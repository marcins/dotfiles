
get_pw () {
  # create a password in your keychain with the account name "onelogin"
  security 2>&1 >/dev/null find-generic-password -ga onelogin | ruby -e 'print $1 if STDIN.gets =~ /^password: "(.*)"$/'
}

# Establish VPN connection using Cisco VPN Agent with 2FA
# @param $1 username (optional) - the user to connect as, defaults to currently logged in user
# @param $2 tfa  (optional) - the two factor authentication method to use push|sms|phone, defaults to "push"
function vpn-connect {
    local user=${1:-`whoami`}
    local pass=`get_pw`
    local tfa=${2:-push}
    echo
    echo -n "Connecting ${user} to vpn using 2FA method ${tfa}..."
    printf "${user}\n${pass}\n${tfa}\n" | /opt/cisco/anyconnect/bin/vpn -s connect AU &> /dev/null # Change AU to "US East" for North America
    unset user pass tfa
    echo "Done"
}
 
# Status of the VPN connection, e.g. Connected, Reconnecting, Disconnected e.t.c
function vpn-status {
    /opt/cisco/anyconnect/bin/vpn state
}
 
# Disconnect the VPN connection
function vpn-disconnect {
    echo -n "Disconnecting vpn connection..."
    /opt/cisco/anyconnect/bin/vpn disconnect &> /dev/null
    echo "Done"
}