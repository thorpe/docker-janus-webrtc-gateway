git clone https://github.com/warmcat/libwebsockets.git
cd libwebsockets
git checkout v3.2-stable
mkdir build
cd build
cmake -DLWS_MAX_SMP=1 -DCMAKE_INSTALL_PREFIX:PATH=/usr -DCMAKE_C_FLAGS="-fpic" ..
make && sudo make install

cd ..
rm -rf ./libwebsockets