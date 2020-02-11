import QtQuick 2.0
import Sailfish.Silica 1.0


Dialog{
    id:dialog;
    Column{
        anchors.fill:parent;
        id:column;
        width:parent.width;
        spacing:Theme.paddingMedium;
        Row{
            spacing:160;
            x:25;
            Label{
                text:"Firstnumber:"
            }
            Label{
                text:"Secondnumber:"
            }
        }
        Row{
            width:parent.width;
            spacing:25;
            TextField{
                id:number1;
                width:parent.width/2-12.5;
            }
            TextField{
                id:number2;
                width:parent.width/2-12.5;
            }
        }
        Button{
            width:parent.width;
            text:"Сложить";
            onClicked:{
                console.log(parseInt(number1.text)+parseInt(number2.text));
            }
        }
    }
}


