import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaListView {
        anchors.fill: parent
        PullDownMenu {
            MenuItem {
                text: qsTr("Яблоко")
                onClicked: txtfield.text = text
            }
            MenuItem {
                text: qsTr("Мандарин")
                onClicked: txtfield.text = text
            }
            MenuItem {
                text: qsTr("Виноград")
                onClicked: txtfield.text = text
            }
        }
        PushUpMenu {
            MenuItem {
                text: qsTr("Самолёт")
                onClicked: txtfield.text = text
            }
            MenuItem {
                text: qsTr("Поезд")
                onClicked: txtfield.text = text
            }
            MenuItem {
                text: qsTr("Автобус")
                onClicked: txtfield.text = text
            }
        }
        header: PageHeader{title: "List" }
    }
    TextField {
        anchors.centerIn: parent
        id: txtfield
        text: "..."
        width: parent.width
    }
}
