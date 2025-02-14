qt_add_executable(tst_qknxnetipcurrentconfigdib WIN32
    tst_qknxnetipcurrentconfigdib.cpp
)
target_link_libraries(tst_qknxnetipcurrentconfigdib PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetipcurrentconfigdib
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetipcurrentconfigdib
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
