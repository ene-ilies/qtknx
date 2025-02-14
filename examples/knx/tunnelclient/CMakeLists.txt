qt_add_executable(tunnelclient MACOSX_BUNDLE
    main.cpp
)
target_include_directories(tunnelclient PRIVATE
    .
)

target_link_libraries(tunnelclient PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
)

install(TARGETS tunnelclient
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tunnelclient
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
