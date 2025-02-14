qt_add_executable(tst_qknxaddress WIN32
    tst_qknxaddress.cpp
)
target_link_libraries(tst_qknxaddress PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxaddress
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxaddress
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
