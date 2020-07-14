#-------------------------------------------------
#
# Project created by QtCreator 2020-07-14T10:31:00
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = PropertyBrowser_PropertyChange
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui

# NOTE: The current working directory of the build script is the build directory of this project, e.g.,
#       c:\_files\lib\qtpropertybrowser\examples\build-propertybrowser_propertychange-desktop_qt_5_7_0_msvc2013_64bit-debug\debug
message("PWD=$$PWD")

INCLUDEPATH += ../../src

message("INCLUDEPATH=$$INCLUDEPATH")

win32:LIBS += ../../build/bin/Debug/QtPropertyBrowser.lib
