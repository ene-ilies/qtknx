qt_add_executable(tst_qknxtunnelframefactory WIN32
    tst_qknxtunnelframefactory.cpp
)
target_link_libraries(tst_qknxtunnelframefactory PRIVATE
    Qt::Core
    Qt::Knx
    Qt::KnxPrivate
    Qt::Test
)

install(TARGETS tst_qknxtunnelframefactory
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxtunnelframefactory
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
