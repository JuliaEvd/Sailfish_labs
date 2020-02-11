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
            MenuItem{
                text: qsTr("Task 2")
                onClicked: pageStack.push(Qt.resolvedUrl("2_first.qml"))
            }
            MenuItem{
                text: qsTr("Task 3")
                onClicked: pageStack.push(Qt.resolvedUrl("3_first.qml"))
            }
            MenuItem{
                text: qsTr("Task 4")
                onClicked: pageStack.push(Qt.resolvedUrl("4_first.qml"))
            }
            MenuItem{
                text: qsTr("Task 5")
                onClicked: pageStack.push(Qt.resolvedUrl("5_first.qml"))
            }
            MenuItem{
                text: qsTr("Task 6")
                onClicked: pageStack.push(Qt.resolvedUrl("6_first.qml"))
            }
            MenuItem{
                text: qsTr("Task 7")
                onClicked: pageStack.push(Qt.resolvedUrl("7_first.qml"))
            }
            MenuItem{
                text: qsTr("Task 8")
                onClicked: pageStack.push(Qt.resolvedUrl("8_first.qml"))
            }
            MenuItem{
                text: qsTr("Task 9")
                onClicked: pageStack.push(Qt.resolvedUrl("9_first.qml"))
            }
            MenuItem{
                text: qsTr("Task 10")
                onClicked: pageStack.push(Qt.resolvedUrl("10_first.qml"))
            }
            MenuItem{
                text: qsTr("Task 11")
                onClicked: pageStack.push(Qt.resolvedUrl("11_first.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Page 1")
            }
            Label {
                text: "Глубина стека: " + pageStack.depth
            }
            Button {
                text: "Назад"
                onClicked: pageStack.pop()
            }
            Button {
                text: "Вперед"
                onClicked: pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
            }
        }
    }
}
