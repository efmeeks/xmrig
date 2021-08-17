sudo apt-get update
sudo apt-get upgrade
sudo apt-install -y screen

wget https://github.com/xmrig/xmrig/releases/download/v6.14.0/xmrig-6.14.0-focal-x64.tar.gz
tar -xvzf xmrig-6.14.0-focal-x64.tar.gz
mv xmrig-6.14.0 xmrig

wget https://raw.githubusercontent.com/efmeeks/xmrig/main/myriade.txt
wget https://raw.githubusercontent.com/efmeeks/xmrig/main/xmrpool.eu.txt
mv myriade.txt xmrpool.eu.txt xmrig

echo "screen ~/xmrig/xmrig" > start-mining
chmod +x start-mining

echo "kill \$(ps aux | grep xmrig | grep -v grep | awk '{print $2}')" > stop-mining
chmod +x stop-mining

echo Done
