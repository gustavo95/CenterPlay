import QtQuick 2.7

PageGameForm {
    Loader {
        id: pageLoader
    }

    button1.onClicked: {
        console.log("Button \"Game1\" clicked.");
    }
    button2.onClicked: {
        console.log("Button \"Game2\" clicked.");
    }
    button3.onClicked: {
        console.log("Button \"Game3\" clicked.");
    }
    button4.onClicked: {
        console.log("Button \"Game4\" clicked.");
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
