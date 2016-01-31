#-------------------------------------------------
#
# Project created by QtCreator 2015-09-10T11:34:01
#
#-------------------------------------------------

QT       += qml quick
CONFIG += c++11

TARGET = nitroxcalc
TEMPLATE = app


SOURCES += main.cpp\
    calc.cpp \
    calcwrapper.cpp

HEADERS  += calc.h \
    calcwrapper.h

CONFIG += mobility
MOBILITY = 

RESOURCES += \
    ui.qrc


# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
#include(deployment.pri)

DISTFILES +=


