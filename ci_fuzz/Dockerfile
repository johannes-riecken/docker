ARG DEBIAN_FRONTEND=noninteractive
apt update
apt install docker.io systemctl libxshmfence1
/app/ci-fuzz-installer-2.25.0-linux
echo 'PATH="$HOME/bin:$PATH"' >>~/.bashrc
systemctl --user enable ci-daemon.service
mkdir /Users
adduser --home /Users/rieckenj rieckenj
adduser rieckenj docker
chmod 0777 /var/run/docker.sock
chown rieckenj docker /var/run/docker.sock
apt install software-properties-common apt-transport-https wget && wget https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -&& add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"&& apt install -y code

On host: xhost + 127.0.0.1
In container: export DISPLAY=host.docker.internal:0
