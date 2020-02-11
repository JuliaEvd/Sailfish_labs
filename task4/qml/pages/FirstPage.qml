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
                        onClicked: pageStack.push(Qt.resolvedUrl("3_page.qml"))
                    }
                    MenuItem {
                        text: qsTr("Task 4")
                        onClicked: pageStack.push(Qt.resolvedUrl("4_page.qml"))
                    }
                    MenuItem {
                        text: qsTr("Task 5")
                        onClicked: pageStack.push(Qt.resolvedUrl("5_page.qml"))
                    }
                    MenuItem {
                        text: qsTr("Task 6")
                        onClicked: pageStack.push(Qt.resolvedUrl("6_page.qml"))
                    }
                    MenuItem {
                        text: qsTr("Task 7")
                        onClicked: pageStack.push(Qt.resolvedUrl("7_page.qml"))
                    }
                    MenuItem {
                        text: qsTr("Task 8")
                        onClicked: pageStack.push(Qt.resolvedUrl("8_page.qml"))
                    }
                }

        ListModel {
                    id: datamodel
                    ListElement {color: "white"; text: "Белый"}
                    ListElement {color: "black"; text: "Чёрный"}
                    ListElement {color: "blue"; text: "Синий"}
                }
                SilicaListView {
                    anchors.fill:  parent
                    header: PageHeader {title: "Task 1"}
                    model: datamodel
                    delegate: Rectangle {
                        id: rec
                        width: parent.width
                        height: 100
                        color: model.color
                        Text {
                            anchors.centerIn: parent
                            text: model.text
                             color: Qt.rgba(1-rec.color.r, 1-rec.color.b, 1-rec.color.g, rec.color.a)
                        }
                    }
                }
           }
       }
