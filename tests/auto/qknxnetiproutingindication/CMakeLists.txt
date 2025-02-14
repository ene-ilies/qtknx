qt_add_executable(tst_qknxnetiproutingindication WIN32
    tst_qknxnetiproutingindication.cpp
)
target_link_libraries(tst_qknxnetiproutingindication PRIVATE
    Qt::Core
    Qt::Knx
    Qt::KnxPrivate
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetiproutingindication
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetiproutingindication
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
