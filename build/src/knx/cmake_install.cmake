# Install script for directory: /home/bogdan-dev/development/projects/qtknx/src/knx

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/metatypes" TYPE FILE FILES "/home/bogdan-dev/development/projects/qtknx/build/src/knx/meta_types/qt6knx_release_metatypes.json")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Knx" TYPE FILE FILES
    "/home/bogdan-dev/development/projects/qtknx/build/lib/cmake/Qt6Knx/Qt6KnxConfig.cmake"
    "/home/bogdan-dev/development/projects/qtknx/build/lib/cmake/Qt6Knx/Qt6KnxConfigVersion.cmake"
    "/home/bogdan-dev/development/projects/qtknx/build/lib/cmake/Qt6Knx/Qt6KnxConfigVersionImpl.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libQt6Knx.so.6.8.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libQt6Knx.so.6"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/bogdan-dev/development/projects/qtknx/build/lib/libQt6Knx.so.6.8.2"
    "/home/bogdan-dev/development/projects/qtknx/build/lib/libQt6Knx.so.6"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libQt6Knx.so.6.8.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libQt6Knx.so.6"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/home/bogdan-dev/development/projects/qtknx/build/libexec/qt-internal-strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/bogdan-dev/development/projects/qtknx/build/lib/libQt6Knx.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Knx/Qt6KnxTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Knx/Qt6KnxTargets.cmake"
         "/home/bogdan-dev/development/projects/qtknx/build/src/knx/CMakeFiles/Export/3ed17c7b51eda291eeb501ed74b9305c/Qt6KnxTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Knx/Qt6KnxTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Knx/Qt6KnxTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Knx" TYPE FILE FILES "/home/bogdan-dev/development/projects/qtknx/build/src/knx/CMakeFiles/Export/3ed17c7b51eda291eeb501ed74b9305c/Qt6KnxTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Knx" TYPE FILE FILES "/home/bogdan-dev/development/projects/qtknx/build/src/knx/CMakeFiles/Export/3ed17c7b51eda291eeb501ed74b9305c/Qt6KnxTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Knx" TYPE FILE FILES
    "/home/bogdan-dev/development/projects/qtknx/build/lib/cmake/Qt6Knx/Qt6KnxVersionlessAliasTargets.cmake"
    "/home/bogdan-dev/development/projects/qtknx/build/lib/cmake/Qt6Knx/Qt6KnxVersionlessTargets.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Knx" TYPE FILE FILES
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/modules" TYPE FILE FILES "/home/bogdan-dev/development/projects/qtknx/build/lib/modules/Knx.json")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Qt6Knx" TYPE FILE FILES "/home/bogdan-dev/development/projects/qtknx/build/lib/cmake/Qt6Knx/Qt6KnxAdditionalTargetInfo.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/QtKnx" TYPE DIRECTORY FILES "/home/bogdan-dev/development/projects/qtknx/build/include/QtKnx/.syncqt_staging/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/QtKnx" TYPE FILE FILES
    "/home/bogdan-dev/development/projects/qtknx/build/include/QtKnx/qtknxexports.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/core/qknxbytearray.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknx1bit.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknx1bitcontrolled.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknx1byte.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknx2bitset.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknx2bytefloat.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknx2bytesignedvalue.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknx2byteunsignedvalue.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknx32bitset.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknx3bitcontrolled.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknx4bytefloat.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknx4bytesignedvalue.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknx4byteunsignedvalue.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknx8bitset.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknx8bitsignedvalue.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknx8bitunsignedvalue.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknxchar.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknxcharstring.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknxdatapointtype.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknxdatapointtypefactory.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknxdatetime.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknxelectricalenergy.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknxentranceaccess.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknxscene.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknxstatusmode3.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknxtime.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknxutf8string.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknxvarstring.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/ets/manufacturers.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/knxproj/qknxgroupaddressinfo.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/knxproj/qknxgroupaddressinfos.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetip.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipconfigdib.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipconnectionheader.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipconnectionstaterequest.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipconnectionstateresponse.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipconnectrequest.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipconnectresponse.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipcrd.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipcri.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipcurrentconfigdib.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipdescriptionrequest.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipdescriptionresponse.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipdeviceconfigurationacknowledge.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipdeviceconfigurationrequest.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipdevicedib.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipdevicemanagement.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipdisconnectrequest.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipdisconnectresponse.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipendpointconnection.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipextendeddevicedib.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipframe.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipframeheader.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetiphpai.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipknxaddressesdib.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipmanufacturerdib.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetiprouter.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetiproutingbusy.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetiproutingindication.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetiproutinglostmessage.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetiproutingsystembroadcast.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipsearchrequest.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipsearchresponse.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipsecureconfiguration.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipsecuredservicefamiliesdib.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipsecurewrapper.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipserverdescriptionagent.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipserverdiscoveryagent.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipserverinfo.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipservicefamiliesdib.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipsessionauthenticate.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipsessionrequest.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipsessionresponse.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipsessionstatus.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipsrp.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipstruct.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipstructheader.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetiptimernotify.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetiptunnel.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetiptunnelingacknowledge.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetiptunnelingfeatureget.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetiptunnelingfeatureinfo.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetiptunnelingfeatureresponse.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetiptunnelingfeatureset.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetiptunnelinginfodib.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetiptunnelingrequest.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qknxadditionalinfo.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qknxaddress.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qknxcontrolfield.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qknxdevicemanagementframe.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qknxdevicemanagementframefactory.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qknxextendedcontrolfield.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qknxinterfaceobjectproperty.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qknxinterfaceobjectpropertydatatype.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qknxinterfaceobjecttype.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qknxlinklayerframe.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qknxlinklayerframebuilder.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qknxnamespace.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qknxtpdu.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qknxtraits.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qknxutils.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qtknxglobal.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/ssl/qknxcryptographicengine.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/ssl/qknxsecurekey.h"
    "/home/bogdan-dev/development/projects/qtknx/build/include/QtKnx/QtKnxDepends"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/QtKnx/6.8.2/QtKnx/private" TYPE FILE FILES
    "/home/bogdan-dev/development/projects/qtknx/src/knx/dpt/qknxdatapointtype_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/knxproj/qknxbuildings_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/knxproj/qknxdeviceinstance_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/knxproj/qknxgroupaddresses_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/knxproj/qknxinstallation_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/knxproj/qknxprojectinformation_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/knxproj/qknxprojectroot_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/knxproj/qknxprojectutils_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/knxproj/qknxtopology_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/knxproj/qzipreader_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/knxproj/qzipwriter_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxbuilderdata_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipendpointconnection_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipsecureconfiguration_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipserverdescriptionagent_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipserverdiscoveryagent_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetipserverinfo_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/netip/qknxnetiptestrouter_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qknxtpdufactory_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/qtknxglobal_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/ssl/qknxkeyring_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/ssl/qknxssl_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/ssl/qsslsocket_openssl11_symbols_p.h"
    "/home/bogdan-dev/development/projects/qtknx/src/knx/ssl/qsslsocket_openssl_symbols_p.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mkspecs/modules" TYPE FILE FILES
    "/home/bogdan-dev/development/projects/qtknx/build/lib/mkspecs/modules/qt_lib_knx.pri"
    "/home/bogdan-dev/development/projects/qtknx/build/lib/mkspecs/modules/qt_lib_knx_private.pri"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/bogdan-dev/development/projects/qtknx/build/lib/pkgconfig/Qt6Knx.pc")
endif()

