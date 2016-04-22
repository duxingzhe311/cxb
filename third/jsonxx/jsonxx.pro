#-------------------------------------------------
#
# Project created by QtCreator 2016-04-22T17:28:16
#
#-------------------------------------------------

QT       -= core gui

TARGET = jsonxx
TEMPLATE = lib
CONFIG += staticlib
CONFIG   += c++11

SOURCES += jsonxx.cpp

HEADERS += jsonxx.h
unix {
    target.path = /usr/lib
    INSTALLS += target
}
