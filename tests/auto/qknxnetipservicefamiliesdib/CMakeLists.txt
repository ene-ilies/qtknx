qt_add_executable(tst_qknxnetipservicefamiliesdib WIN32
    tst_qknxnetipservicefamiliesdib.cpp
)
target_link_libraries(tst_qknxnetipservicefamiliesdib PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetipservicefamiliesdib
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetipservicefamiliesdib
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
