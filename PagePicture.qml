import QtQuick 2.4

PagePictureForm {
    button1.onClicked: {
        console.log("Button \"Video\" clicked.");
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
