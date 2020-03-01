QT += core gui widgets
TARGET = mytest
TEMPLATE = app
CONFIG += c++17 -pthread
msvc:QMAKE_CXXFLAGS += /std:c++17
gcc:QMAKE_CXXFLAGS += -std=c++17 -lstdc++fs
gcc:QMAKE_CXXFLAGS_GNUCXX11 = -std=c++17
gcc:QMAKE_CXXFLAGS_GNUCXX14 = -std=c++17
gcc:QMAKE_CXXFLAGS_GNUCXX1Z = -std=c++17

SOURCES += main.cpp


# Default rules for deployment.
qnx: target.path = /tmp/$$TARGET/bin
else: unix:!android: target.path = /opt/$$TARGET/bin
!isEmpty(target.path): INSTALLS += target
