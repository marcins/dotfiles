alias mci='mvn clean install -DskipTests -Dskip.unit.tests=true -T 1C'
alias mcis='mci -DskipNpmInstall'

alias git-merge-poms='git mergetool --tool=versions -y'
pgwt () {
    cat $1|gzip -9|wc -c
}
