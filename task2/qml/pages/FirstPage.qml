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
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
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

            Label {
                id: numberLabel;
                anchors.horizontalCenter: parent.horizontalCenter;
                text: "Введите число:"
           }

            TextField {
                id: numberTextField;
                width: parent.width;
                inputMethodHints: Qt.ImhFormattedNumbersOnly;
                label: "Число"
                placeholderText: label

            }

            Button {
                id: pressedButton;
                anchors.horizontalCenter: parent.horizontalCenter;
                text: "Нажмите"
                onClicked: {
                    pressedButton.color = "green";
                    pressedButton.text = "Спасибо";
                }
            }

            Button {
                id: holdButton;
                anchors.horizontalCenter: parent.horizontalCenter;
                highlightBackgroundColor: "blue"
                text: "Кнопка"
                onPressedButtonsChanged: {
                    if(down)
                        holdLabel.text = "Нажата"
                    else
                        holdLabel.text = "Отпущена"
                }

            }

            Label {
                id: holdLabel;
                anchors.horizontalCenter: parent.horizontalCenter;
                text: "Отпущена"
            }

            ValueButton {

                width: parent.width;
                property int count: 0
                label: "Счетчик"
                description: "Считает количество нажатий"
                value: count;
                onClicked: count++;

            }

            DatePicker {
                date: new Date();
                daysVisible: true
                monthYearVisible: true
                onDateTextChanged:
                    console.log(dateText);

            }

            Item {
                height: timePicker.height;
                width: parent.width;
                TimePicker {
                    width: parent.width
                    id: timePicker;
                    hour: 3
                    minute: 0
                    onTimeTextChanged: console.log(timeText)
                }
                Label {
                    anchors.centerIn: timePicker;
                    text: timePicker.timeText
                    font.pixelSize: Theme.fontSizeExtraLarge
                }

            }

            ComboBox {
                anchors.horizontalCenter: parent.horizontalCenter;
                label: "Вид спорта"
                menu: ContextMenu {
                    id: menu
                    MenuItem { text: "Хоккей" }
                    MenuItem { text: "Бадминтон" }
                    MenuItem { text: "Биатлон" }

                }
                onCurrentIndexChanged: console.log(menu.children[currentIndex].text)
            }

            Switch {

                anchors.horizontalCenter: parent.horizontalCenter;
                id: mute;
                iconSource: "image://theme/icon-m-speaker-mute?"
                            + (checked ? Theme.highlightColor : Theme.primaryColor);

            }

            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: mute.checked?"Включен":"Выключен";
            }
            Slider {
                width: parent.width
                label: "Текущее значение = " + value;
                minimumValue: -10;
                maximumValue: 100;
                value: 0;
                stepSize: 1;
            }
            Rectangle {
                color: "transparent"
                width: parent.width;
                height: 200;
            }
        }
    }
}
