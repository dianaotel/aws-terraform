#!/bin/sh
sudo yum update
sudo amazon-linux-extras install docker
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user
docker pull elgalu/selenium
docker pull dosel/zalenium
# docker run --rm -ti --name zalenium -p 4444:4444 \
#      -v /var/run/docker.sock:/var/run/docker.sock \
#      -v /tmp/videos:/home/seluser/videos \
#      --privileged dosel/zalenium start

