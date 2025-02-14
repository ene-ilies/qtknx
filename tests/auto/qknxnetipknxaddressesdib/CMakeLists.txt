qt_add_executable(tst_qknxnetipknxaddressesdib WIN32
    tst_qknxnetipknxaddressesdib.cpp
)
target_link_libraries(tst_qknxnetipknxaddressesdib PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetipknxaddressesdib
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetipknxaddressesdib
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
