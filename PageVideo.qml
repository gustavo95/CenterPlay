import QtQuick 2.0

PageVideoForm {
    button1.onClicked: {
        console.log("Button \"Video\" clicked.");
    }
    button2.onClicked: {
        console.log("Button \"Music\" clicked.");
    }
    button3.onClicked: {
        console.log("Button \"Image\" clicked.");
    }
    text1 {
        id: textDate
        color: "black"
    }
    Timer{
        id: timer
        interval: 1000
        repeat: true
        running: true
        triggeredOnStart: true
        onTriggered: {
            textDate.text = Qt.formatDateTime(new Date(), "hh:mm dd/MM/yyyy")
        }
    }
}
