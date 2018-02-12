# Kill processes on a port
function killport {
    lsof | grep ":$1" | awk '{print $2}' | xargs kill -9
}

function using {
    lsof | grep ":$1"
}

export BB_PRECOMMIT_SKIP_NPM=1