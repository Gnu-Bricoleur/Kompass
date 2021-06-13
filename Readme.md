 
git clone git@github.com:Gnu-Bricoleur/Kompass.git

sudo pacman -Syu git cmake make extra-cmake-modules base-devel libiio

cd build

make

sudo make install

sudo iio_attr -d lis3mdl sampling_frequency 80

kompass


