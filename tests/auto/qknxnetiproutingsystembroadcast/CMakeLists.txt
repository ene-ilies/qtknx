qt_add_executable(tst_qknxnetiproutingsystembroadcast WIN32
    tst_qknxnetiproutingsystembroadcast.cpp
)
target_link_libraries(tst_qknxnetiproutingsystembroadcast PRIVATE
    Qt::Core
    Qt::Knx
    Qt::KnxPrivate
    Qt::Network
    Qt::Test
)

install(TARGETS tst_qknxnetiproutingsystembroadcast
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxnetiproutingsystembroadcast
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
