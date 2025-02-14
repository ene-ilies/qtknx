qt_add_executable(tst_qknxproject WIN32
    tst_qknxproject.cpp
)
target_link_libraries(tst_qknxproject PRIVATE
    Qt::Core
    Qt::Knx
    Qt::KnxPrivate
    Qt::Test
)


# Resources:
set(project_resource_files
    "data/buildings.xml"
    "data/groupaddresses.xml"
    "data/locations.xml"
    "data/projectinformation.xml"
    "data/topology.xml"
    "data/trades-busaccess-splitinfos.xml"
    "data/unassigneddevices.xml"
)

qt_add_resources(tst_qknxproject "project"
    PREFIX
        "/"
    FILES
        ${project_resource_files}
)

install(TARGETS tst_qknxproject
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET tst_qknxproject
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
