qt_add_executable(tst_qknxnetipconnectionstateresponse WIN32
    tst_qknxnetipconnectionstateresponse.cpp
)
target_link_libraries(tst_qknxnetipconnectionstateresponse PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetipconnectionstateresponse
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetipconnectionstateresponse
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
