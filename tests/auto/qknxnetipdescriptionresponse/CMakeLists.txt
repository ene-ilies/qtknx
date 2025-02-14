qt_add_executable(tst_qknxnetipdescriptionresponse WIN32
    tst_qknxnetipdescriptionresponse.cpp
)
target_link_libraries(tst_qknxnetipdescriptionresponse PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetipdescriptionresponse
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetipdescriptionresponse
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
