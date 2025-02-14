
        cmake_minimum_required(VERSION 3.16)
        message(STATUS "Starting SBOM generation in build dir: /home/bogdan-dev/development/projects/qtknx/build/qt_sbom/staging-qtknx.spdx.in")
        set(QT_SBOM_EXTERNAL_DOC_REFS "")
        file(READ "/home/bogdan-dev/development/projects/qtknx/build/qt_sbom/SPDXRef-DOCUMENT-qtknx.spdx.in" content)
        # Override any previous file because we're starting from scratch.
        file(WRITE "/home/bogdan-dev/development/projects/qtknx/build/qt_sbom/staging-qtknx.spdx.in" "${content}")
