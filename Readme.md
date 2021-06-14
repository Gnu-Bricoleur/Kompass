# Kompass

Compass application for Manjaro Plasma OS, tested on a Pinephone Braveheart edition.
It should be easy to compile and for other mobile OSs provided they have a graphical interface based on QML and Kirigami.
It should work on other versions of the Pinephone with minor modifications (currently, it's looking for an iio enabled lis3mdl in the device tree) and also other Linux smartphones (or any Linux computer with a magnetometer).

# How to compile and test
Clone the repository, install the required depencies for the compilation and compile
```
git clone git@github.com:Gnu-Bricoleur/Kompass.git
sudo pacman -Syu git cmake make extra-cmake-modules base-devel libiio
mkdir build
cd build
cmake ..
make
sudo make install
```
Increase the sampling frequency from the default (1Hz) to 80Hz to improve the experience
```
sudo iio_attr -d lis3mdl sampling_frequency 80
```
Launch the app
```
kompass
```
An icon in the launcher should also be available to launch the application

**Turn the smartphone at least one full turn to calibrate**

# TODO :
[] Add a proper icon
[] Add "Info" page
[] Add a "Advanced" page with more info from the sensor
[] Add tilt compenssation algorithm
[] Add sane default for the scaling
[] Add a message asking to turn the smartphone to complete calibration
