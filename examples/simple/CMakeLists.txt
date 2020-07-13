# NOTE: the Qt Project does not seem to work with this example in QtCreator,
# I built it in visual studio, then did
# >set PATH=%PATH%;C:\Qt\Qt5.7.0\5.7\msvc2013_64\bin
# then I was able to run simple.exe from that command prompt where I added that directory to path.

SET(example_name simple)

SET(KIT_SRCS
  main.cpp
  )
  
INCLUDE_DIRECTORIES(
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_BINARY_DIR}
  )
  
ADD_EXECUTABLE(${example_name} ${KIT_SRCS})
TARGET_LINK_LIBRARIES(${example_name} ${PROJECT_NAME})