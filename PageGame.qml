import QtQuick 2.7

PageGameForm {
    Loader {
        id: pageLoader
    }

    button1.onClicked: {
        console.log("Button \"Game1\" clicked.");
        tetrixLauncher.launchTetrix();
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
