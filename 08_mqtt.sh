cd ~
git clone https://github.com/eclipse/paho.mqtt.c.git
cd paho.mqtt.c
make && sudo make install

cd ..
rm -rf ./paho.mqtt.c