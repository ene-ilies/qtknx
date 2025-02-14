# Install script for directory: /home/bogdan-dev/development/projects/qtknx

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/bogdan-dev/sdks/nymea-qemu-rootfs/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux/x86_64-poky-linux-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/bogdan-dev/development/projects/qtknx/build/src/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Knx" TYPE FILE FILES "/home/bogdan-dev/development/projects/qtknx/build/lib/cmake/Qt6Knx/Qt6KnxDependencies.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6BuildInternals/StandaloneTests" TYPE FILE FILES "/home/bogdan-dev/development/projects/qtknx/build/lib/cmake/Qt6BuildInternals/StandaloneTests/QtKnxTestsConfig.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE DIRECTORY FILES "/home/bogdan-dev/development/projects/qtknx/build/lib/" FILES_MATCHING REGEX "/[^/]*\\.prl$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "sbom" OR NOT CMAKE_INSTALL_COMPONENT)
  
        set(QT_SBOM_INSTALLED_ALL_CONFIGS TRUE)
        
        if(QT_SBOM_INSTALLED_ALL_CONFIGS)
            set(QT_SBOM_BUILD_TIME FALSE)
            set(QT_SBOM_OUTPUT_DIR "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sbom")
            set(QT_SBOM_OUTPUT_PATH "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sbom/qtknx-6.8.2.spdx")
            set(QT_SBOM_OUTPUT_PATH_WITHOUT_EXT "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sbom/qtknx-6.8.2")
            file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sbom")
            include("/home/bogdan-dev/development/projects/qtknx/build/qt_sbom/assemble_sbom.cmake")
            
            list(SORT QT_SBOM_VERIFICATION_CODES)
            string(REPLACE ";" "" QT_SBOM_VERIFICATION_CODES "${QT_SBOM_VERIFICATION_CODES}")
            file(WRITE "/home/bogdan-dev/development/projects/qtknx/build/qt_sbom/verification.txt" "${QT_SBOM_VERIFICATION_CODES}")
            file(SHA1 "/home/bogdan-dev/development/projects/qtknx/build/qt_sbom/verification.txt" QT_SBOM_VERIFICATION_CODE)
            
            message(STATUS "Finalizing SBOM generation in install dir: ${QT_SBOM_OUTPUT_PATH}")
            configure_file("/home/bogdan-dev/development/projects/qtknx/build/qt_sbom/staging-qtknx.spdx.in" "${QT_SBOM_OUTPUT_PATH}")
            
            
            
        else()
            message(STATUS "Skipping SBOM finalization because not all configs were installed.")
        endif()

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/bogdan-dev/development/projects/qtknx/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
