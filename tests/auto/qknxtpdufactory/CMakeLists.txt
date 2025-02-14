qt_add_executable(tst_qknxtpdufactory WIN32
    tst_qknxtpdufactory.cpp
)
target_link_libraries(tst_qknxtpdufactory PRIVATE
    Qt::Core
    Qt::Knx
    Qt::KnxPrivate
    Qt::Test
)

install(TARGETS tst_qknxtpdufactory
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxtpdufactory
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
