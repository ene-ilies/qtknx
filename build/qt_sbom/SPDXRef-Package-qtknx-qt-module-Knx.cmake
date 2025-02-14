
        file(APPEND "/home/bogdan-dev/development/projects/qtknx/build/qt_sbom/staging-qtknx.spdx.in"
"
PackageName: Knx
SPDXID: SPDXRef-Package-qtknx-qt-module-Knx
PackageDownloadLocation: git://code.qt.io/qt/qtknx.git@6a296d26aef90872b210a807c338503ce59e5062
PackageVersion: 6.8.2
PackageSupplier: Organization: TheQtCompany
PackageLicenseConcluded: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only
PackageLicenseDeclared: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only
ExternalRef: PACKAGE-MANAGER purl pkg:github/qt/qtknx@6a296d2?library_name=Knx#src/knx
ExternalRef: PACKAGE-MANAGER purl pkg:generic/TheQtCompany/qtknx-Knx@6a296d2?vcs_url=https://code.qt.io/qt/qtknx.git@6a296d2&library_name=Knx#src/knx
FilesAnalyzed: true
PackageCopyrightText: <text>Copyright (C) The Qt Company Ltd. and other contributors.</text>
PrimaryPackagePurpose: LIBRARY
ExternalRef: SECURITY cpe23Type cpe:2.3:a:qt:qtknx:6.8.2:*:*:*:*:*:*:*
ExternalRef: SECURITY cpe23Type cpe:2.3:a:qt:qt:6.8.2:*:*:*:*:*:*:*
Relationship: SPDXRef-Package-qtknx-qt-module-Knx DEPENDS_ON DocumentRef-qtbase:SPDXRef-Package-qtbase-qt-module-Core
Relationship: SPDXRef-Package-qtknx-qt-module-Knx DEPENDS_ON DocumentRef-qtbase:SPDXRef-Package-qtbase-qt-module-Network
Relationship: SPDXRef-Package-qtknx-qt-module-Knx DEPENDS_ON DocumentRef-qtbase:SPDXRef-Package-qtbase-qt-module-PlatformModuleInternal
Relationship: SPDXRef-Package-qtknx CONTAINS SPDXRef-Package-qtknx-qt-module-Knx
"
        )
