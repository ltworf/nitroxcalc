#-------------------------------------------------
#
# Project created by QtCreator 2015-09-10T11:34:01
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = nitroxcalc
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    calc.cpp

HEADERS  += mainwindow.h \
    calc.h

FORMS    += mainwindow.ui

CONFIG += mobility
MOBILITY = 

DISTFILES += \
    Form.qml \
    Bubble.qml

RESOURCES += \
    res.qrc

