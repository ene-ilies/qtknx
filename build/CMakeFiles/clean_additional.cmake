# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Release")
  file(REMOVE_RECURSE
  "src/knx/CMakeFiles/Knx_autogen.dir/AutogenUsed.txt"
  "src/knx/CMakeFiles/Knx_autogen.dir/ParseCache.txt"
  "src/knx/Knx_autogen"
  )
endif()
