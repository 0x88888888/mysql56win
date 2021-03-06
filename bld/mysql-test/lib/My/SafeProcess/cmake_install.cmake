# Install script for directory: D:/mysql56win/mysql-test/lib/My/SafeProcess

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xTestx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE EXECUTABLE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/Debug/my_safe_process.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE EXECUTABLE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/Release/my_safe_process.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE EXECUTABLE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/MinSizeRel/my_safe_process.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE EXECUTABLE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/RelWithDebInfo/my_safe_process.exe")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDebuginfox" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE FILE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/${CMAKE_INSTALL_CONFIG_NAME}/my_safe_process.pdb")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xTestx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE EXECUTABLE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/Debug/my_safe_kill.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE EXECUTABLE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/Release/my_safe_kill.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE EXECUTABLE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/MinSizeRel/my_safe_kill.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE EXECUTABLE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/RelWithDebInfo/my_safe_kill.exe")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDebuginfox" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE FILE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/${CMAKE_INSTALL_CONFIG_NAME}/my_safe_kill.pdb")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xTestx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE EXECUTABLE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/Debug/my_safe_process.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE EXECUTABLE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/Release/my_safe_process.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE EXECUTABLE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/MinSizeRel/my_safe_process.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE EXECUTABLE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/RelWithDebInfo/my_safe_process.exe")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xTestx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE EXECUTABLE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/Debug/my_safe_kill.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE EXECUTABLE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/Release/my_safe_kill.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE EXECUTABLE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/MinSizeRel/my_safe_kill.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE EXECUTABLE FILES "D:/mysql56win/bld/mysql-test/lib/My/SafeProcess/RelWithDebInfo/my_safe_kill.exe")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xTestx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/mysql-test/lib/My/SafeProcess" TYPE FILE FILES "D:/mysql56win/mysql-test/lib/My/SafeProcess/Base.pm")
endif()

