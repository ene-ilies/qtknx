qt_add_executable(tst_qknxtunnelframe WIN32
    tst_qknxtunnelframe.cpp
)
target_link_libraries(tst_qknxtunnelframe PRIVATE
    Qt::Core
    Qt::Knx
    Qt::KnxPrivate
    Qt::Test
)

install(TARGETS tst_qknxtunnelframe
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxtunnelframe
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
