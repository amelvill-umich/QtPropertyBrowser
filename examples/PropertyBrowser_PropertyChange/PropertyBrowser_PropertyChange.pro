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


win32:LIBS +=../../build/bin/Debug/QtPropertyBrowser.lib

# I don't really understand why it's necessary to also link against these (what I'd think are) intermediate object files,
# it would seem like the lib file should have everything, right?
win32:LIBS +=../../build/src/QtPropertyBrowser.dir/Debug/mocs_compilation.obj
win32:LIBS +=../../build/src/QtPropertyBrowser.dir/Debug/QDoubleSpinBoxG.obj
win32:LIBS +=../../build/src/QtPropertyBrowser.dir/Debug/qrc_qtpropertybrowser.obj
win32:LIBS +=../../build/src/QtPropertyBrowser.dir/Debug/qtbuttonpropertybrowser.obj
win32:LIBS +=../../build/src/QtPropertyBrowser.dir/Debug/qteditorfactory.obj
win32:LIBS +=../../build/src/QtPropertyBrowser.dir/Debug/qtgroupboxpropertybrowser.obj
win32:LIBS +=../../build/src/QtPropertyBrowser.dir/Debug/qtpropertybrowser.obj
win32:LIBS +=../../build/src/QtPropertyBrowser.dir/Debug/qtpropertybrowserutils.obj
win32:LIBS +=../../build/src/QtPropertyBrowser.dir/Debug/qtpropertymanager.obj
win32:LIBS +=../../build/src/QtPropertyBrowser.dir/Debug/qttreepropertybrowser.obj
win32:LIBS +=../../build/src/QtPropertyBrowser.dir/Debug/qtvariantproperty.obj

message("INCLUDEPATH=$$INCLUDEPATH")
message("libs=$$LIBS")
