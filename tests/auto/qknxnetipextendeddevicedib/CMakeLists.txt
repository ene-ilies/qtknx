qt_add_executable(tst_qknxnetipextendeddevicedib WIN32
    tst_qknxnetipextendeddevicedib.cpp
)
target_link_libraries(tst_qknxnetipextendeddevicedib PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetipextendeddevicedib
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetipextendeddevicedib
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
