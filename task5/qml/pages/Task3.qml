import QtQuick 2.0
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
import Sailfish.Silica 1.0

Page {
    id: page
    property int cross: 0
    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        Item {
            Button {
                            id: button1
                            text: "Button"
                            x: 200
                            onPressed: hello.state = "fallen"
                            onReleased: hello.state = ""

                        }
            Text {
                font.pointSize: 50
                id: hello
                text: qsTr("Hello World!")
                height: 200
                width: 400
                y: 150
                x: 200
                anchors.verticalCenter: parent.Center
                states: [
                    State {
                            name: "fallen"
                            PropertyChanges {
                                target: hello
                                y: 1000
                                rotation: 180
                            }

                        }
                ]
                transitions: [
                    Transition {
                            NumberAnimation {
                                targets: hello
                                properties: "y"
                                duration: 2000
                            }
                            RotationAnimation {
                                direction: RotationAnimation.Counterclockwise
                                duration: 2000
                            }
                            ColorAnimation {
                                id: colorAnimIn
                                from: "red"
                                to: "green"
                                duration: 1500
                                target: hello
                                property: 'color'
                            }
                    }
                ]
            }
        }
    }
}
