qt_add_executable(tst_qknxnetiptunnelingfeature WIN32
    tst_qknxnetiptunnelingfeature.cpp
)
target_link_libraries(tst_qknxnetiptunnelingfeature PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetiptunnelingfeature
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetiptunnelingfeature
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
