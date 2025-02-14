qt_add_executable(tst_qknxnetipconnectionheader WIN32
    tst_qknxnetipconnectionheader.cpp
)
target_link_libraries(tst_qknxnetipconnectionheader PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Test
)

install(TARGETS tst_qknxnetipconnectionheader
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetipconnectionheader
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
