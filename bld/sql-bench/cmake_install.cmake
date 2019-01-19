# Install script for directory: D:/mysql56win/sql-bench

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench/Data" TYPE DIRECTORY FILES "D:/mysql56win/sql-bench/Data/ATIS")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench/Data" TYPE DIRECTORY FILES "D:/mysql56win/sql-bench/Data/Wisconsin")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE DIRECTORY FILES "D:/mysql56win/sql-bench/limits")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE FILE FILES "D:/mysql56win/bld/sql-bench/README")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/bench-count-distinct.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/bench-init.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/compare-results.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/copy-db.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/crash-me.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/example.bat")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/graph-compare-results.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/innotest1.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/innotest1a.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/innotest1b.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/innotest2.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/innotest2a.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/innotest2b.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/pwd.bat")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/run-all-tests.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/server-cfg.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/test-ATIS.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/test-alter-table.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/test-big-tables.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/test-connect.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/test-create.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/test-insert.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/test-select.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/test-transactions.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/test-wisconsin.pl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xSqlBenchx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-bench" TYPE PROGRAM FILES "D:/mysql56win/bld/sql-bench/uname.bat")
endif()

