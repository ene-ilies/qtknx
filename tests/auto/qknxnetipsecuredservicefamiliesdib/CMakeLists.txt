qt_add_executable(tst_qknxnetipsecuredservicefamiliesdib WIN32
    tst_qknxnetipsecuredservicefamiliesdib.cpp
)
target_link_libraries(tst_qknxnetipsecuredservicefamiliesdib PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetipsecuredservicefamiliesdib
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetipsecuredservicefamiliesdib
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
