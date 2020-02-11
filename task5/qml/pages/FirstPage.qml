import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {

                    MenuItem {
                        text: qsTr("Task 2")
                        onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
                    }
                    MenuItem {
                        text: qsTr("Task 3")
                        onClicked: pageStack.push(Qt.resolvedUrl("Task3.qml"))
                    }
                    MenuItem {
                        text: qsTr("Task 4")
                        onClicked: pageStack.push(Qt.resolvedUrl("Task4.qml"))
                    }
                    MenuItem {
                        text: qsTr("Task 5")
                        onClicked: pageStack.push(Qt.resolvedUrl("Task5.qml"))
                    }
                    MenuItem {
                        text: qsTr("Task 6")
                        onClicked: pageStack.push(Qt.resolvedUrl("Task6.qml"))
                    }
                    MenuItem {
                        text: qsTr("Task 7")
                        onClicked: pageStack.push(Qt.resolvedUrl("Task7.qml"))
                    }
                }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column
            property int count : 0
            width: page.width
            spacing: Theme.paddingLarge
            Item {
                Timer {
                    interval: 2500; running: true; repeat: true
                    onTriggered: column.count = column.count + 1
                }

            }
            Rectangle {
                id: red
                width: 320
                height: 320
                radius: 150
                anchors.horizontalCenter: parent.horizontalCenter
                state: "ON"
                states: [
                    State {
                        name: "ON"
                        PropertyChanges {
                            target: red
                            color: "red"
                        }
                        when: (column.count%3 == 0)
                    },
                    State {
                        name: "OFF"
                        PropertyChanges {
                            target: red
                            color: "black"
                        }
                        when: (column.count%3 != 0)
                    }
                ]
            }
            Rectangle {
                id: yellow
                width: 320
                height: 320
                radius: 150
                anchors.horizontalCenter: parent.horizontalCenter
                state: "OFF"
                states: [
                    State {
                        name: "ON"
                        PropertyChanges {
                            target: yellow
                            color: "yellow"
                        }
                        when: (column.count%3 == 1)
                    },
                    State {
                        name: "OFF"
                        PropertyChanges {
                            target: yellow
                            color: "black"
                        }
                        when: (column.count%3 != 1)
                    }
                ]
            }
            Rectangle {
                id: green
                width: 320
                height: 320
                radius: 150
                anchors.horizontalCenter: parent.horizontalCenter
                state: "OFF"
                states: [
                    State {
                        name: "ON"
                        PropertyChanges {
                            target: green
                            color: "green"
                        }
                        when: (column.count%3 == 2)
                    },
                    State {
                        name: "OFF"
                        PropertyChanges {
                            target: green
                            color: "black"
                        }
                        when: (column.count%3 != 2)
                    }
                ]
            }
        }
    }
}
