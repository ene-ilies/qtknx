qt_add_executable(tst_qknxdevicemanagementframe WIN32
    tst_qknxdevicemanagementframe.cpp
)
target_link_libraries(tst_qknxdevicemanagementframe PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Test
)

install(TARGETS tst_qknxdevicemanagementframe
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxdevicemanagementframe
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
