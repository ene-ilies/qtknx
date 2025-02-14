qt_add_executable(tst_qknxnetipdisconnectresponse WIN32
    tst_qknxnetipdisconnectresponse.cpp
)
target_link_libraries(tst_qknxnetipdisconnectresponse PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetipdisconnectresponse
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetipdisconnectresponse
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
