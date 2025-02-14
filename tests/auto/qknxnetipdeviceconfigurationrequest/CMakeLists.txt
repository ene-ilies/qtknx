qt_add_executable(tst_qknxnetipdeviceconfigurationrequest WIN32
    tst_qknxnetipdeviceconfigurationrequest.cpp
)
target_link_libraries(tst_qknxnetipdeviceconfigurationrequest PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetipdeviceconfigurationrequest
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetipdeviceconfigurationrequest
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
