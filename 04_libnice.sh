git clone -b latest-release --single-branch https://gitlab.freedesktop.org/libnice/libnice.git
cd libnice
./autogen.sh
./configure --prefix=/usr
make && sudo make install

cd ..
rm -rf ./libnice