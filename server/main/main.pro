
include(deployment.pri)

TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
CONFIG   += c++11

SOURCES += main.cpp

INCLUDEPATH += ../..
INCLUDEPATH += . ../../third
#INCLUDEPATH += . ../../third/jsonxx

win32: {
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../third/jsonxx/release/ -ljsonxx
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../third/jsonxx/debug/ -ljsonxx

#CONFIG(release, debug|release) {
#LIBS +=  -L$$OUT_PWD/../../third/release/  -Wl,--start-group -ljsonxx -Wl,--end-group
#} else {
#LIBS +=  -L$$OUT_PWD/../../third/debug/  -Wl,--start-group -ljsonxx -Wl,--end-group
#}
}




