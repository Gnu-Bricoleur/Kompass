# CMake generated Testfile for 
# Source directory: /home/sylvain/Desktop/1-SAUVEGARDE/Documents/Loisirs/Pinephone/manjaroKompass/Kompass
# Build directory: /home/sylvain/Desktop/1-SAUVEGARDE/Documents/Loisirs/Pinephone/manjaroKompass/Kompass/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(appstreamtest "/usr/bin/cmake" "-DAPPSTREAMCLI=/usr/bin/appstreamcli" "-DINSTALL_FILES=/home/sylvain/Desktop/1-SAUVEGARDE/Documents/Loisirs/Pinephone/manjaroKompass/Kompass/build/install_manifest.txt" "-P" "/usr/share/ECM/kde-modules/appstreamtest.cmake")
set_tests_properties(appstreamtest PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/ECM/kde-modules/KDECMakeSettings.cmake;163;add_test;/usr/share/ECM/kde-modules/KDECMakeSettings.cmake;181;appstreamtest;/usr/share/ECM/kde-modules/KDECMakeSettings.cmake;0;;/home/sylvain/Desktop/1-SAUVEGARDE/Documents/Loisirs/Pinephone/manjaroKompass/Kompass/CMakeLists.txt;28;include;/home/sylvain/Desktop/1-SAUVEGARDE/Documents/Loisirs/Pinephone/manjaroKompass/Kompass/CMakeLists.txt;0;")
subdirs("src")
