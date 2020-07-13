
INCLUDE_DIRECTORIES(
  ${${PROJECT_NAME}_SOURCE_DIR}/src
  )

# [AJM] A lot of these examples were made for QT4 and won't work in Qt5, they need to be updated
#ADD_SUBDIRECTORY(canvas_typed)
#ADD_SUBDIRECTORY(canvas_variant)
#ADD_SUBDIRECTORY(decoration)
#ADD_SUBDIRECTORY(demo)
#ADD_SUBDIRECTORY(extension)
#ADD_SUBDIRECTORY(object_controller)
ADD_SUBDIRECTORY(simple)
