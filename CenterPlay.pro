QT += qml quick
QT += widgets
QT  += core gui
QT += qml quick webview
QT += webengine svg
QTPLUGIN += qtvirtualkeyboardplugin


CONFIG += c++11

SOURCES += main.cpp \
    scriptlauncher.cpp \
    tetrixlauncher.cpp \
    videolauncher.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES +=

HEADERS += \
    scriptlauncher.h \
    tetrixlauncher.h \
    videolauncher.h
