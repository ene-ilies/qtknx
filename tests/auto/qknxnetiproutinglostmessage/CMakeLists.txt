qt_add_executable(tst_qknxnetiproutinglostmessage WIN32
    tst_qknxnetiproutinglostmessage.cpp
)
target_link_libraries(tst_qknxnetiproutinglostmessage PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetiproutinglostmessage
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetiproutinglostmessage
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
