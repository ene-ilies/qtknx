qt_add_executable(tst_qknxadditionalinfo WIN32
    tst_qknxadditionalinfo.cpp
)
target_link_libraries(tst_qknxadditionalinfo PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Test
)

install(TARGETS tst_qknxadditionalinfo
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxadditionalinfo
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
