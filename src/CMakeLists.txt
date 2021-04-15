set(kompass_SRCS
    main.cpp
    )

qt5_add_resources(RESOURCES resources.qrc)
add_executable(kompass ${kompass_SRCS} ${RESOURCES})
target_link_libraries(kompass Qt5::Core  Qt5::Qml Qt5::Quick Qt5::Svg iio)
install(TARGETS kompass ${KF5_INSTALL_TARGETS_DEFAULT_ARGS})
