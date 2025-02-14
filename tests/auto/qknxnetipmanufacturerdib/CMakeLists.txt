qt_add_executable(tst_qknxnetipmanufacturerdib WIN32
    tst_qknxnetipmanufacturerdib.cpp
)
target_link_libraries(tst_qknxnetipmanufacturerdib PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetipmanufacturerdib
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetipmanufacturerdib
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
