qt_add_executable(tst_qknxgroupaddressinfo WIN32
    tst_qknxgroupaddressinfo.cpp
)
target_link_libraries(tst_qknxgroupaddressinfo PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
    Qt::Test
)


# Resources:
set(project_resource_files
    "data/0.xml"
    "data/qt.io.knxproj"
)

qt_add_resources(tst_qknxgroupaddressinfo "project"
    PREFIX
        "/"
    FILES
        ${project_resource_files}
)

install(TARGETS tst_qknxgroupaddressinfo
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxgroupaddressinfo
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
