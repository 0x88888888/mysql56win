# Install script for directory: D:/mysql56win/include

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "D:/mysql56win/include/mysql.h"
    "D:/mysql56win/include/mysql_com.h"
    "D:/mysql56win/include/mysql_time.h"
    "D:/mysql56win/include/my_list.h"
    "D:/mysql56win/include/my_alloc.h"
    "D:/mysql56win/include/typelib.h"
    "D:/mysql56win/include/mysql/plugin.h"
    "D:/mysql56win/include/mysql/plugin_audit.h"
    "D:/mysql56win/include/mysql/plugin_ftparser.h"
    "D:/mysql56win/include/mysql/plugin_validate_password.h"
    "D:/mysql56win/include/my_dbug.h"
    "D:/mysql56win/include/m_string.h"
    "D:/mysql56win/include/my_sys.h"
    "D:/mysql56win/include/my_xml.h"
    "D:/mysql56win/include/mysql_embed.h"
    "D:/mysql56win/include/my_pthread.h"
    "D:/mysql56win/include/decimal.h"
    "D:/mysql56win/include/errmsg.h"
    "D:/mysql56win/include/my_global.h"
    "D:/mysql56win/include/my_net.h"
    "D:/mysql56win/include/my_getopt.h"
    "D:/mysql56win/include/sslopt-longopts.h"
    "D:/mysql56win/include/my_dir.h"
    "D:/mysql56win/include/sslopt-vars.h"
    "D:/mysql56win/include/sslopt-case.h"
    "D:/mysql56win/include/sql_common.h"
    "D:/mysql56win/include/keycache.h"
    "D:/mysql56win/include/m_ctype.h"
    "D:/mysql56win/include/my_attribute.h"
    "D:/mysql56win/include/my_compiler.h"
    "D:/mysql56win/include/mysql_com_server.h"
    "D:/mysql56win/include/my_byteorder.h"
    "D:/mysql56win/include/byte_order_generic.h"
    "D:/mysql56win/include/byte_order_generic_x86.h"
    "D:/mysql56win/include/byte_order_generic_x86_64.h"
    "D:/mysql56win/include/little_endian.h"
    "D:/mysql56win/include/big_endian.h"
    "D:/mysql56win/bld/include/mysql_version.h"
    "D:/mysql56win/bld/include/my_config.h"
    "D:/mysql56win/bld/include/mysqld_ername.h"
    "D:/mysql56win/bld/include/mysqld_error.h"
    "D:/mysql56win/bld/include/sql_state.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mysql" TYPE DIRECTORY FILES "D:/mysql56win/include/mysql/" REGEX "/[^/]*\\.h$" REGEX "/psi\\_abi[^/]*$" EXCLUDE)
endif()

