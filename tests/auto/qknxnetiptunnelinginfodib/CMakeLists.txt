qt_add_executable(tst_qknxnetiptunnelinginfodib WIN32
    tst_qknxnetiptunnelinginfodib.cpp
)
target_link_libraries(tst_qknxnetiptunnelinginfodib PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetiptunnelinginfodib
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetiptunnelinginfodib
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
