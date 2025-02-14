qt_add_executable(router MACOSX_BUNDLE
    main.cpp
)
target_include_directories(router PRIVATE
    .
)

target_link_libraries(router PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
)

install(TARGETS router
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET router
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
