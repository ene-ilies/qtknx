cmake_minimum_required(VERSION 3.16)
project(discoverer VERSION 1.0 LANGUAGES C CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(QT NAMES Qt5 Qt6 REQUIRED COMPONENTS Core)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Knx Network)

qt_standard_project_setup()

qt_add_executable(discoverer MACOSX_BUNDLE
    main.cpp
)
target_include_directories(discoverer PRIVATE
    .
)

target_link_libraries(discoverer PRIVATE
    Qt::Core
    Qt::Knx
    Qt::Network
)

install(TARGETS discoverer
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_generate_deploy_app_script(
    TARGET discoverer
    FILENAME_VARIABLE deploy_script
    NO_UNSUPPORTED_PLATFORM_ERROR
)
install(SCRIPT ${deploy_script})
