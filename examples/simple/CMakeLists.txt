message("Start of examples/simple/CMakeLists.txt")

# NOTE: the Qt Project does not seem to work with this example in QtCreator,
# I built it in visual studio, then did
# >set PATH=%PATH%;C:\Qt\Qt5.7.0\5.7\msvc2013_64\bin
# then I was able to run simple.exe from that command prompt where I added that directory to path.

message("PROJECT_NAME is ${PROJECT_NAME}")
# e.g., QtPropertyBrowser\examples\simple
message("CMAKE_CURRENT_SOURCE_DIR is ${CMAKE_CURRENT_SOURCE_DIR}")
# e.g., QtPropertyBrowser\build\examples\simple
message("CMAKE_CURRENT_BINARY_DIR is ${CMAKE_CURRENT_BINARY_DIR}")
  
INCLUDE_DIRECTORIES(
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_BINARY_DIR}
  )
  
ADD_EXECUTABLE("simple" "main.cpp")

# I think this is just saying, "link it against QtPropertyBrowser.lib", or QtPropertyBrowser.dll?
TARGET_LINK_LIBRARIES("simple" "QtPropertyBrowser")