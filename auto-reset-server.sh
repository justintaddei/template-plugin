mvn package
ls target | grep .jar | xargs -i cp target/{} demo-server/plugins/{}
cd demo-server

while :
do
rm -rf world world_nether world_the_end
java -Xmx4096M -Xms1024M -jar server.jar nogui
done
