qt_add_executable(tst_qknxnetipdescriptionrequest WIN32
    tst_qknxnetipdescriptionrequest.cpp
)
target_link_libraries(tst_qknxnetipdescriptionrequest PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetipdescriptionrequest
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetipdescriptionrequest
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
