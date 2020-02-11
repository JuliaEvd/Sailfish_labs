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
    SilicaListView {
        anchors.fill: parent
        model: tasks
        header: PageHeader {title: "Задачи" }
        section {
            property: "time"
            delegate: SectionHeader {text: section}
        }
        delegate: Text{
            color: "blue"
            text: task
        }
    }
}
