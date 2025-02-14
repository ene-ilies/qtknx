
        if(NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libQt6Knx.so.6.8.2"
                AND NOT QT_SBOM_BUILD_TIME AND NOT QT_SBOM_FAKE_CHECKSUM)
            if(NOT FALSE)
                message(FATAL_ERROR "Cannot find 'lib/libQt6Knx.so.6.8.2' to compute its checksum. "
                    "Expected to find it at '$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libQt6Knx.so.6.8.2' ")
            endif()
        else()
            if(NOT QT_SBOM_BUILD_TIME)
                if(QT_SBOM_FAKE_CHECKSUM)
                    set(sha1 "158942a783ee1095eafacaffd93de73edeadbeef")
                else()
                    file(SHA1 "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libQt6Knx.so.6.8.2" sha1)
                endif()
                list(APPEND QT_SBOM_VERIFICATION_CODES ${sha1})
            endif()
            file(APPEND "/home/bogdan-dev/development/projects/qtknx/build/qt_sbom/staging-qtknx.spdx.in"
"
FileName: ./lib/libQt6Knx.so.6.8.2
SPDXID: SPDXRef-PackagedFile-qt-module-Knx
FileType: BINARY
FileChecksum: SHA1: ${sha1}
LicenseConcluded: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only
FileCopyrightText: <text>Copyright (C) The Qt Company Ltd. and other contributors.</text>
LicenseInfoInFile: NOASSERTION
Relationship: SPDXRef-Package-qtknx-qt-module-Knx CONTAINS SPDXRef-PackagedFile-qt-module-Knx
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/build/include/QtKnx/qtknxexports.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/core/qknxbytearray.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/core/qknxbytearray.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx1bit.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx1bit.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx1bitcontrolled.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx1bitcontrolled.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx1byte.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx1byte.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx2bitset.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx2bitset.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx2bytefloat.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx2bytefloat.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx2bytesignedvalue.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx2bytesignedvalue.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx2byteunsignedvalue.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx2byteunsignedvalue.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx32bitset.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx32bitset.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx3bitcontrolled.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx3bitcontrolled.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx4bytefloat.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx4bytefloat.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx4bytesignedvalue.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx4bytesignedvalue.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx4byteunsignedvalue.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx4byteunsignedvalue.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx8bitset.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx8bitset.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx8bitsignedvalue.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx8bitsignedvalue.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx8bitunsignedvalue.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknx8bitunsignedvalue.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxchar.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxchar.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxcharstring.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxcharstring.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxdatapointtype.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxdatapointtype.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxdatapointtype_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxdatapointtypefactory.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxdatapointtypefactory.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxdatetime.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxdatetime.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxelectricalenergy.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxelectricalenergy.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxentranceaccess.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxentranceaccess.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxscene.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxscene.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxstatusmode3.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxstatusmode3.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxtime.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxtime.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxutf8string.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxutf8string.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxvarstring.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/dpt/qknxvarstring.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/ets/manufacturers.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/ets/manufacturers.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxbuildings.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxbuildings_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxdeviceinstance.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxdeviceinstance_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxgroupaddresses.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxgroupaddresses_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxgroupaddressinfo.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxgroupaddressinfo.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxgroupaddressinfos.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxgroupaddressinfos.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxinstallation.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxinstallation_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxprojectinformation.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxprojectinformation_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxprojectroot.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxprojectroot_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxprojectutils.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxprojectutils_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxtopology.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qknxtopology_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qzip.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qzipreader_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/knxproj/qzipwriter_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxbuilderdata_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetip.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetip.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipconfigdib.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipconfigdib.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipconnectionheader.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipconnectionheader.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipconnectionstaterequest.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipconnectionstaterequest.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipconnectionstateresponse.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipconnectionstateresponse.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipconnectrequest.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipconnectrequest.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipconnectresponse.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipconnectresponse.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipcrd.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipcrd.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipcri.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipcri.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipcurrentconfigdib.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipcurrentconfigdib.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipdescriptionrequest.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipdescriptionrequest.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipdescriptionresponse.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipdescriptionresponse.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipdeviceconfigurationacknowledge.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipdeviceconfigurationacknowledge.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipdeviceconfigurationrequest.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipdeviceconfigurationrequest.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipdevicedib.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipdevicedib.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipdevicemanagement.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipdevicemanagement.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipdisconnectrequest.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipdisconnectrequest.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipdisconnectresponse.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipdisconnectresponse.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipendpointconnection.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipendpointconnection.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipendpointconnection_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipextendeddevicedib.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipextendeddevicedib.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipframe.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipframe.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipframeheader.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipframeheader.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiphpai.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiphpai.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipknxaddressesdib.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipknxaddressesdib.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipmanufacturerdib.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipmanufacturerdib.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiprouter.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiprouter.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiprouter_p.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiproutingbusy.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiproutingbusy.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiproutingindication.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiproutingindication.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiproutinglostmessage.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiproutinglostmessage.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiproutingsystembroadcast.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiproutingsystembroadcast.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsearchrequest.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsearchrequest.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsearchresponse.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsearchresponse.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsecureconfiguration.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsecureconfiguration.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsecureconfiguration_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsecuredservicefamiliesdib.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsecuredservicefamiliesdib.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsecurewrapper.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsecurewrapper.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipserverdescriptionagent.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipserverdescriptionagent.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipserverdescriptionagent_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipserverdiscoveryagent.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipserverdiscoveryagent.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipserverdiscoveryagent_p.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipserverdiscoveryagent_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipserverinfo.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipserverinfo.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipserverinfo_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipservicefamiliesdib.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipservicefamiliesdib.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsessionauthenticate.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsessionauthenticate.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsessionrequest.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsessionrequest.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsessionresponse.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsessionresponse.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsessionstatus.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsessionstatus.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsrp.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipsrp.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipstruct.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipstruct.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipstructheader.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetipstructheader.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptestrouter_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptimernotify.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptimernotify.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptunnel.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptunnel.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptunnelingacknowledge.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptunnelingacknowledge.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptunnelingfeatureget.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptunnelingfeatureget.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptunnelingfeatureinfo.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptunnelingfeatureinfo.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptunnelingfeatureresponse.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptunnelingfeatureresponse.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptunnelingfeatureset.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptunnelingfeatureset.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptunnelinginfodib.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptunnelinginfodib.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptunnelingrequest.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/netip/qknxnetiptunnelingrequest.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxadditionalinfo.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxadditionalinfo.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxaddress.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxaddress.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxcontrolfield.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxcontrolfield.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxdevicemanagementframe.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxdevicemanagementframe.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxdevicemanagementframefactory.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxdevicemanagementframefactory.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxextendedcontrolfield.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxextendedcontrolfield.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxinterfaceobjectproperty.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxinterfaceobjectproperty.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxinterfaceobjectpropertydatatype.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxinterfaceobjectpropertydatatype.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxinterfaceobjecttype.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxinterfaceobjecttype.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxlinklayerframe.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxlinklayerframe.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxlinklayerframebuilder.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxlinklayerframebuilder.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxnamespace.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxnamespace.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxtpdu.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxtpdu.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxtpdufactory_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxtpdufactory_broadcast.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxtpdufactory_multicast.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxtpdufactory_p2p.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxtraits.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qknxutils.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qtknxglobal.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/qtknxglobal_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/ssl/qknxcryptographicengine.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/ssl/qknxcryptographicengine.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/ssl/qknxkeyring.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/ssl/qknxkeyring_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/ssl/qknxsecurekey.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/ssl/qknxsecurekey.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/ssl/qknxssl_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/ssl/qknxssl_openssl.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/ssl/qsslsocket_openssl11_symbols_p.h
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/ssl/qsslsocket_openssl_symbols.cpp
Relationship: SPDXRef-PackagedFile-qt-module-Knx GENERATED_FROM NOASSERTION
RelationshipComment: /src_dir/qtknx/src/knx/ssl/qsslsocket_openssl_symbols_p.h
"
                )
        endif()
