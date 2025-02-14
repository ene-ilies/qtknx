
        set(relative_file_name "lib/sbom/qtbase-6.8.2.spdx")
        set(document_dir_paths /home/bogdan-dev/development/projects/qtknx/build/qt_sbom;$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX};/home/bogdan-dev/sdks/nymea-qemu-rootfs/sysroots/core2-64-poky-linux/usr)
        list(JOIN document_dir_paths "\n" document_dir_paths_per_line)
        foreach(document_dir_path IN LISTS document_dir_paths)
            set(document_file_path "${document_dir_path}/${relative_file_name}")
            if(EXISTS "${document_file_path}")
                break()
            endif()
        endforeach()
        if(NOT EXISTS "${document_file_path}")
            message(FATAL_ERROR "Could not find external SBOM document ${relative_file_name}"
                " in any of the document dir paths: ${document_dir_paths_per_line} "
            )
        endif()
        file(SHA1 "${document_file_path}" ext_sha1)
        file(READ "${document_file_path}" ext_content)

        if(NOT "${ext_content}" MATCHES "[\r\n]DocumentNamespace:")
            message(FATAL_ERROR "Missing DocumentNamespace in ${document_file_path}")
        endif()

        string(REGEX REPLACE "^.*[\r\n]DocumentNamespace:[ \t]*([^#\r\n]*).*$"
                "\\1" ext_ns "${ext_content}")

        list(APPEND QT_SBOM_EXTERNAL_DOC_REFS "
ExternalDocumentRef: DocumentRef-qtbase ${ext_ns} SHA1: ${ext_sha1}")

        
