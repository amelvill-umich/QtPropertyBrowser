
CMAKE_MINIMUM_REQUIRED(VERSION 2.8.2)

PROJECT(QtPropertyBrowser)

# Note that examples/PropertyBrowser_PropertyChange is built by QtCreator, not CMake
OPTION(QtPropertyBrowser_BUILD_EXAMPLES "Build simple example" OFF)

#-----------------------------------------------------------------------------
# Output directories.
#
SET(output_dir ${QtPropertyBrowser_BINARY_DIR}/bin)
FOREACH(type LIBRARY RUNTIME ARCHIVE)
  IF(NOT DEFINED CMAKE_${type}_OUTPUT_DIRECTORY)
    SET(CMAKE_${type}_OUTPUT_DIRECTORY ${output_dir} CACHE INTERNAL "Single output directory for building all libraries.")
  ENDIF()
ENDFOREACH()

# Find includes in corresponding build directories
set(CMAKE_INCLUDE_CURRENT_DIR ON)
# Instruct CMake to run moc automatically when needed.
set(CMAKE_AUTOMOC ON)

#-----------------------------------------------------------------------------
# Qt
#
FIND_PACKAGE(Qt5 COMPONENTS Widgets REQUIRED)

#-----------------------------------------------------------------------------
# Subdirectories
#
ADD_SUBDIRECTORY(src)

IF(QtPropertyBrowser_BUILD_EXAMPLES)
  ADD_SUBDIRECTORY(examples)
ENDIF()

#-----------------------------------------------------------------------------
# Just copy UseQtPropertyBrowser.cmake.in to build/UseQtPropertyBrowser.cmake
#
CONFIGURE_FILE(UseQtPropertyBrowser.cmake.in
               ${QtPropertyBrowser_BINARY_DIR}/UseQtPropertyBrowser.cmake COPYONLY)

# Now generate the config
#-----------------------------------------------------------------------------

# Settings specific to the build tree.

# The "use" file.
SET(QtPropertyBrowser_USE_FILE ${QtPropertyBrowser_BINARY_DIR}/UseQtPropertyBrowser.cmake)

# Determine the include directories needed.
SET(QtPropertyBrowser_INCLUDE_DIRS_CONFIG
  ${QtPropertyBrowser_SOURCE_DIR}/src
)

# Library directory.
SET(QtPropertyBrowser_LIBRARY_DIRS_CONFIG ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})

# Runtime library directory.
SET(QtPropertyBrowser_RUNTIME_LIBRARY_DIRS_CONFIG ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})

# Build configuration information.
SET(QtPropertyBrowser_CONFIGURATION_TYPES_CONFIG ${CMAKE_CONFIGURATION_TYPES})
SET(QtPropertyBrowser_BUILD_TYPE_CONFIG ${CMAKE_BUILD_TYPE})

#-----------------------------------------------------------------------------
# Configure QtPropertyBrowserConfig.cmake for the build tree.
CONFIGURE_FILE(${QtPropertyBrowser_SOURCE_DIR}/QtPropertyBrowserConfig.cmake.in
               ${QtPropertyBrowser_BINARY_DIR}/QtPropertyBrowserConfig.cmake @ONLY IMMEDIATE)

