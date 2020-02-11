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
TARGET = task4

CONFIG += sailfishapp

SOURCES += src/task4.cpp

DISTFILES += qml/task4.qml \
    qml/cover/CoverPage.qml \
    qml/pages/3_page.qml \
    qml/pages/4_page.qml \
    qml/pages/5_page.qml \
    qml/pages/6_page.qml \
    qml/pages/7_page.qml \
    qml/pages/8_page.qml \
    qml/pages/Dao.qml \
    qml/pages/FirstPage.qml \
    qml/pages/SecondPage.qml \
    rpm/task4.changes.in \
    rpm/task4.changes.run.in \
    rpm/task4.spec \
    rpm/task4.yaml \
    translations/*.ts \
    task4.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/task4-de.ts
