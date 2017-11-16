import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.2

import QtQuick 2.0
import QtQuick.Window 2.0
import QtWebEngine 1.3


PageMusicForm {
    id: root
    button1.onClicked: {
        console.log("Button \"Spotify\" clicked.");
        var component = Qt.createComponent("qrc:/PageSpotify.qml")
        var window    = component.createObject(root)
         mainroot.currentwindow = "other"

        //window.showFullScreen()
    }
    button2.onClicked: {
        console.log("Button \"Deezer\" clicked.");
        var component = Qt.createComponent("qrc:/PageDeezer.qml")
        var window    = component.createObject(root)
         mainroot.currentwindow = "other"
        //window.show()
    }
    button3.onClicked: {
        console.log("Button \"SDCARD\" clicked.");
        var component = Qt.createComponent("qrc:/FolderMusic.qml")
        var window    = component.createObject(root)


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
