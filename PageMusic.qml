import QtQuick 2.0

PageMusicForm {
    button1.onClicked: {
        console.log("Button \"Music1\" clicked.");
    }
    button2.onClicked: {
        console.log("Button \"Music2\" clicked.");
    }
    button3.onClicked: {
        console.log("Button \"Music3\" clicked.");
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
