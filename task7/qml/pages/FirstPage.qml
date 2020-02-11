import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    readonly property real defaultStrokeSize: 5
    readonly property real defaultRubberSize: 20
    readonly property color defaultStrokeColor: Qt.rgba(0, 0, 0, 1)
    readonly property color defaultFillColor: Qt.rgba(1, 1, 1, 1)

 Column {
        anchors.fill:  parent

 Row {
 id:  menu
 spacing:  10
 width:  parent.width

 height:  Theme.itemSizeMedium

 IconTextSwitch {
 checked:  true
 icon.source:  "image://theme/icon-s-edit"
 anchors.verticalCenter:  parent.verticalCenter
 width:  120

 rightMargin: 0


 property real prevLineWidth:  defaultRubberSize;

 onCheckedChanged: {
                    if( canvas.strokeStyle  ==  defaultStrokeColor) {
                        icon.source =  "image://theme/icon-camera-focus"
                        canvas.strokeStyle = defaultFillColor;
 } else {
                        icon.source =  "image://theme/icon-s-edit"
                        canvas.strokeStyle = defaultStrokeColor;
                    }


                    var currentLineWidth =  size.value;
                    size.value =  prevLineWidth;
 prevLineWidth = currentLineWidth;
                }
            }

 Slider {
 id:  size
 minimumValue: 1
 maximumValue: 30
 stepSize: 1
 value:  defaultStrokeSize
 valueText:  value
 width:  240
 anchors.verticalCenter:  parent.verticalCenter
 leftMargin:  0
 rightMargin: 0

 onValueChanged: {
 valueText =  canvas.lineWidth =  value;
                }
            }

 IconButton {
                icon.source:  "image://theme/icon-m-image"
                anchors.verticalCenter:  parent.verticalCenter

                function pictureName() {
                    var dateTime =  new Date();
                    return Qt.formatDateTime(dateTime, "yyyy-MM-dd-hh-mm-ss") +  " .jpeg";
                }

 onClicked: {
                    remorseSave.execute(menu, qsTr("Saving the canvas..."), function() {
                        canvas.save(papocchioDir +  pictureName());
                    }, 3000);
                }

 RemorseItem {
 id: remorseSave
                }
            }

 IconButton {
                icon.source:  "image://theme/icon-m-clear"
                anchors.verticalCenter:  parent.verticalCenter

 onClicked: {
                    remorseClear.execute(menu, qsTr("Clearing the canvas..."), function() {
                        canvas.clear();
                    });
                }

 RemorseItem {
 id: remorseClear
                }
            }
        }

 Rectangle {
 height:  parent.height - menu.height
 width:  parent.width

 Canvas {
 id:  canvas
                anchors.fill:  parent
 antialiasing:  true

 property int startX
 property int startY
 property int finishX
 property int finishY

 property bool initialize:  true

 property real lineWidth:  defaultStrokeSize
 property string strokeStyle:  defaultStrokeColor

 onLineWidthChanged: requestPaint()

                function clear() {
                    var ctx =  getContext("2d");
                    ctx.fillStyle = defaultFillColor;
                    ctx.fillRect( 0, 0, width, height);
                    requestPaint();
                }

 onPaint: {
                    var ctx =  getContext("2d");

                    if (initialize) {
                        clear();
 initialize = false;
                    }

                    ctx.lineCap =  " round";
                    ctx.lineJoin =  " round";

                    ctx.miterLimit = 1;


                    ctx.beginPath();
                    ctx.moveTo(startX, startY);
                    ctx.lineTo(finishX, finishY);
                    ctx.closePath();
                    ctx.stroke();

 startX = finishX;
 startY = finishY;
                }

 MouseArea {
                    anchors.fill:  parent

 onPressed: {
                        parent.startX =  parent.finishX = mouseX;
                        parent.startY =  parent.finishY =  mouseY;
                    }

 onMouseXChanged: {
                        parent.finishX = mouseX;
                        parent.requestPaint();
                    }

 onMouseYChanged: {
                        parent.finishY =  mouseY;
                        parent.requestPaint();
                    }
                }
            }
        }
    }
}
