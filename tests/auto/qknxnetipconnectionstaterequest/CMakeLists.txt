qt_add_executable(tst_qknxnetipconnectionstaterequest WIN32
    tst_qknxnetipconnectionstaterequest.cpp
)
target_link_libraries(tst_qknxnetipconnectionstaterequest PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetipconnectionstaterequest
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetipconnectionstaterequest
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
