sudo service docker stop
sudo service docker start
docker network prune
docker ps -q
docker rm -f $(docker ps -aq)
docker rmi -f $(docker images -q)

# KILL PORTS:
sudo netstat -ntlp | grep LISTEN
echo "sudo kill $(sudo lsof -t -i:631)"