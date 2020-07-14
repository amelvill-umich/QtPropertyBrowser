QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = PropertyBrowser_PropertyChange
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui

message("PWD=$$PWD")

INCLUDEPATH += ../../src

message("INCLUDEPATH=$$INCLUDEPATH")

win32:LIBS += ../../build/bin/Debug/QtPropertyBrowser.lib
