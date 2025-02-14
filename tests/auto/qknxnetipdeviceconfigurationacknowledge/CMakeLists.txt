qt_add_executable(tst_qknxnetipdeviceconfigurationacknowledge WIN32
    tst_qknxnetipdeviceconfigurationacknowledge.cpp
)
target_link_libraries(tst_qknxnetipdeviceconfigurationacknowledge PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetipdeviceconfigurationacknowledge
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetipdeviceconfigurationacknowledge
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
