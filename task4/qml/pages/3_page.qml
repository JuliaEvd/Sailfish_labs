import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    allowedOrientations: Orientation.All
    property var datamodel: [
    {color: "white", text: "Белый"},
    {color: "black", text: "Чёрный"},
    {color: "blue", text: "Синий"},
    ]

    SilicaListView {
        anchors.fill:  parent
        header: PageHeader {title: "Task 3"}
        model: datamodel
        spacing: 10
        delegate: Rectangle {
            id: rec
            width: parent.width
            height: 100
            color: modelData.color
            Text {
                anchors.centerIn: parent
                text: modelData.text
                 color: Qt.rgba(1-rec.color.r, 1-rec.color.b, 1-rec.color.g, rec.color.a)

            }
        }
    }
}
