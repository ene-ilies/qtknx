qt_add_executable(tst_qknxnetiproutinginterface WIN32
    tst_qknxnetiprouter.cpp
)
target_link_libraries(tst_qknxnetiproutinginterface PRIVATE
    Qt::Core
    Qt::Knx
    Qt::KnxPrivate
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetiproutinginterface
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetiproutinginterface
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
