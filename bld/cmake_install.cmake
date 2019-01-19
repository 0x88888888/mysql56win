# Install script for directory: D:/mysql56win

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "D:/MySQL")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xReadmex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE OPTIONAL FILES
    "D:/mysql56win/COPYING"
    "D:/mysql56win/LICENSE.mysql"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xReadmex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES "D:/mysql56win/README")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/docs" TYPE FILE FILES
    "D:/mysql56win/bld/Docs/INFO_SRC"
    "D:/mysql56win/bld/Docs/INFO_BIN"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDocumentationx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/docs" TYPE DIRECTORY FILES "D:/mysql56win/Docs/" REGEX "/makefile\\.[^/]*$" EXCLUDE REGEX "/glibc[^/]*$" EXCLUDE REGEX "/linuxthreads\\.txt$" EXCLUDE REGEX "/myisam\\.txt$" EXCLUDE REGEX "/mysql\\.info$" EXCLUDE REGEX "/sp\\-imp\\-spec\\.txt$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("D:/mysql56win/bld/zlib/cmake_install.cmake")
  include("D:/mysql56win/bld/extra/yassl/cmake_install.cmake")
  include("D:/mysql56win/bld/extra/yassl/taocrypt/cmake_install.cmake")
  include("D:/mysql56win/bld/libevent/cmake_install.cmake")
  include("D:/mysql56win/bld/storage/archive/cmake_install.cmake")
  include("D:/mysql56win/bld/storage/blackhole/cmake_install.cmake")
  include("D:/mysql56win/bld/storage/csv/cmake_install.cmake")
  include("D:/mysql56win/bld/storage/example/cmake_install.cmake")
  include("D:/mysql56win/bld/storage/federated/cmake_install.cmake")
  include("D:/mysql56win/bld/storage/heap/cmake_install.cmake")
  include("D:/mysql56win/bld/storage/innobase/cmake_install.cmake")
  include("D:/mysql56win/bld/storage/myisam/cmake_install.cmake")
  include("D:/mysql56win/bld/storage/myisammrg/cmake_install.cmake")
  include("D:/mysql56win/bld/storage/ndb/cmake_install.cmake")
  include("D:/mysql56win/bld/storage/perfschema/cmake_install.cmake")
  include("D:/mysql56win/bld/storage/spartan/cmake_install.cmake")
  include("D:/mysql56win/bld/plugin/audit_null/cmake_install.cmake")
  include("D:/mysql56win/bld/plugin/auth/cmake_install.cmake")
  include("D:/mysql56win/bld/plugin/connection_control/cmake_install.cmake")
  include("D:/mysql56win/bld/plugin/daemon_example/cmake_install.cmake")
  include("D:/mysql56win/bld/plugin/fulltext/cmake_install.cmake")
  include("D:/mysql56win/bld/plugin/innodb_memcached/cmake_install.cmake")
  include("D:/mysql56win/bld/plugin/password_validation/cmake_install.cmake")
  include("D:/mysql56win/bld/plugin/semisync/cmake_install.cmake")
  include("D:/mysql56win/bld/plugin/udf_services/cmake_install.cmake")
  include("D:/mysql56win/bld/include/cmake_install.cmake")
  include("D:/mysql56win/bld/dbug/cmake_install.cmake")
  include("D:/mysql56win/bld/strings/cmake_install.cmake")
  include("D:/mysql56win/bld/vio/cmake_install.cmake")
  include("D:/mysql56win/bld/regex/cmake_install.cmake")
  include("D:/mysql56win/bld/mysys/cmake_install.cmake")
  include("D:/mysql56win/bld/mysys_ssl/cmake_install.cmake")
  include("D:/mysql56win/bld/libmysql/cmake_install.cmake")
  include("D:/mysql56win/bld/extra/cmake_install.cmake")
  include("D:/mysql56win/bld/client/cmake_install.cmake")
  include("D:/mysql56win/bld/sql/share/cmake_install.cmake")
  include("D:/mysql56win/bld/libservices/cmake_install.cmake")
  include("D:/mysql56win/bld/tests/cmake_install.cmake")
  include("D:/mysql56win/bld/sql/cmake_install.cmake")
  include("D:/mysql56win/bld/scripts/cmake_install.cmake")
  include("D:/mysql56win/bld/mysql-test/cmake_install.cmake")
  include("D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/cmake_install.cmake")
  include("D:/mysql56win/bld/support-files/cmake_install.cmake")
  include("D:/mysql56win/bld/sql-bench/cmake_install.cmake")
  include("D:/mysql56win/bld/packaging/rpm-oel/cmake_install.cmake")
  include("D:/mysql56win/bld/packaging/rpm-fedora/cmake_install.cmake")
  include("D:/mysql56win/bld/packaging/rpm-sles/cmake_install.cmake")
  include("D:/mysql56win/bld/packaging/rpm-docker/cmake_install.cmake")
  include("D:/mysql56win/bld/packaging/deb-in/cmake_install.cmake")
  include("D:/mysql56win/bld/packaging/WiX/cmake_install.cmake")
  include("D:/mysql56win/bld/packaging/solaris/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "D:/mysql56win/bld/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
