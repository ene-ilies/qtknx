qt_add_executable(tst_qknxnetipsearchrequest WIN32
    tst_qknxnetipsearchrequest.cpp
)
target_link_libraries(tst_qknxnetipsearchrequest PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetipsearchrequest
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetipsearchrequest
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
