
        # QT_SBOM_BUILD_TIME be set to FALSE at install time, so don't override if it's set.
        # This allows reusing the same cmake file for both build and install.
        if(NOT DEFINED QT_SBOM_BUILD_TIME)
            set(QT_SBOM_BUILD_TIME TRUE)
        endif()
        if(NOT QT_SBOM_OUTPUT_PATH)
            set(QT_SBOM_OUTPUT_DIR "/home/bogdan-dev/development/projects/qtknx/build/qt_sbom/lib/sbom")
            set(QT_SBOM_OUTPUT_PATH "/home/bogdan-dev/development/projects/qtknx/build/qt_sbom/lib/sbom/qtknx-6.8.2.spdx")
            set(QT_SBOM_OUTPUT_PATH_WITHOUT_EXT "/home/bogdan-dev/development/projects/qtknx/build/qt_sbom/lib/sbom/qtknx-6.8.2")
            file(MAKE_DIRECTORY "/home/bogdan-dev/development/projects/qtknx/build/qt_sbom/lib/sbom")
        endif()
        set(QT_SBOM_VERIFICATION_CODES "")
        include("/home/bogdan-dev/development/projects/qtknx/build/qt_sbom/append_document_to_staging.cmake")
include("/home/bogdan-dev/development/projects/qtknx/build/qt_sbom/SPDXRef-Package-qtknx-qt-module-Knx.cmake")
include("/home/bogdan-dev/development/projects/qtknx/build/qt_sbom/SPDXRef-PackagedFile-qt-module-Knx.cmake")
include("/home/bogdan-dev/development/projects/qtknx/build/qt_sbom/DocumentRef-qtbase.cmake")
        if(QT_SBOM_BUILD_TIME)
            message(STATUS "Finalizing SBOM generation in build dir: ${QT_SBOM_OUTPUT_PATH}")
            configure_file("/home/bogdan-dev/development/projects/qtknx/build/qt_sbom/staging-qtknx.spdx.in" "${QT_SBOM_OUTPUT_PATH}")
            
        endif()
