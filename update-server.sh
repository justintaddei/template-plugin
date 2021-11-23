read -p "Enter target version: " MCVER

if [ -z $MCVER ]; then
    echo "Target version cannot be empty"
    exit 2
fi

LATEST_BUILD=$(curl -s https://papermc.io/api/v2/projects/paper/versions/"$MCVER"/ | sed -nr 's/.*,([0-9]+)]}$/\1/p')

SERVER_JAR="https://papermc.io/api/v2/projects/paper/versions/$MCVER/builds/$LATEST_BUILD/downloads/paper-$MCVER-$LATEST_BUILD.jar"

echo "[Downloading server jar for v$MCVER build #$LATEST_BUILD]"
curl -o ./demo-server/server.jar "$SERVER_JAR"
