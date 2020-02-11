import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel {
        id: tasks
        ListElement {task: "<b>День рождение мамы</b>"
                     time: "17.11.19"}
        ListElement {task: "<b>Поездка на море</b>"
                     time: "01.11.19"}
        ListElement {task: "<b>Сходить на тренировку</b>"
                     time: "10.11.19"}
        ListElement {task: "<b>Сделать дз</b>"
                     time: "10.11.19"}
    }
    SlideshowView {
        id: view
        anchors.centerIn: parent
        height: width
        itemHeight: height; itemWidth: width
        model: tasks
        delegate: Rectangle {
           width: view.itemWidth
           height: view.height
           border.width: 1
           Text {
               anchors.centerIn: parent
               text: tasks.get(index).task + " - " + tasks.get(index).time
           }
        }
    }
}
