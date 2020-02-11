# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = task6

CONFIG += sailfishapp

SOURCES += src/task6.cpp \
    src/counter.cpp \
    src/liststring.cpp

DISTFILES += qml/task6.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/Page1.qml \
    qml/pages/Page2.qml \
    rpm/task6.changes.in \
    rpm/task6.changes.run.in \
    rpm/task6.spec \
    rpm/task6.yaml \
    translations/*.ts \
    task6.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/task6-de.ts

HEADERS += \
    src/counter.h \
    src/liststring.h
