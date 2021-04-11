set(hellokirigami_SRCS
    main.cpp
    )

qt5_add_resources(RESOURCES resources.qrc)
add_executable(hellokirigami ${hellokirigami_SRCS} ${RESOURCES})
target_link_libraries(hellokirigami Qt5::Core  Qt5::Qml Qt5::Quick Qt5::Svg)
install(TARGETS hellokirigami ${KF5_INSTALL_TARGETS_DEFAULT_ARGS})
