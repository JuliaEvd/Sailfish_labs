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
TARGET = task5

CONFIG += sailfishapp

SOURCES += src/task5.cpp

DISTFILES += qml/task5.qml \
    qml/cover/CoverPage.qml \
    qml/pages/Btn.qml \
    qml/pages/FirstPage.qml \
    qml/pages/Light.qml \
    qml/pages/MyTimer.qml \
    qml/pages/SecondPage.qml \
    qml/pages/Task3.qml \
    qml/pages/Task4.qml \
    qml/pages/Task5.qml \
    qml/pages/Task6.qml \
    qml/pages/Task7.qml \
    rpm/task5.changes.in \
    rpm/task5.changes.run.in \
    rpm/task5.spec \
    rpm/task5.yaml \
    translations/*.ts \
    task5.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/task5-de.ts
