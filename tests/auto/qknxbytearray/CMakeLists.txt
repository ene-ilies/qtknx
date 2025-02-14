qt_add_executable(tst_qknxbytearray WIN32
    tst_qknxbytearray.cpp
)
target_link_libraries(tst_qknxbytearray PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Test
)

install(TARGETS tst_qknxbytearray
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxbytearray
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
