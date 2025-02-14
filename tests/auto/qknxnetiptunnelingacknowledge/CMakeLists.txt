qt_add_executable(tst_qknxnetiptunnelingacknowledge WIN32
    tst_qknxnetiptunnelingacknowledge.cpp
)
target_link_libraries(tst_qknxnetiptunnelingacknowledge PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetiptunnelingacknowledge
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetiptunnelingacknowledge
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
