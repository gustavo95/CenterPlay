import QtQuick 2.4
import QtQuick.Dialogs 1.2



PageVideoForm {
    id: mediaroot
    button1.onClicked: {
        console.log("Button \"Netflix\" clicked.");

        var component = Qt.createComponent("qrc:/PageNetflix.qml")
        if (component.status !== Component.Ready){
            if(component.status === Component.Error){
                console.debug("Error:" + component.errorString())
            }

        }

        var window    = component.createObject(mediaroot)
        mainroot.currentwindow = "other"
        console.log("foi")




    }
    button2.onClicked: {
        console.log("Button \"Youtube\" clicked.");
        var component = Qt.createComponent("qrc:PageYoutube.qml")
        if (component.status !== Component.Ready){
            if(component.status === Component.Error){
                console.debug("Error:" + component.errorString())
            }

        }
        var window    = component.createObject(mediaroot)
        mainroot.currentwindow = "other"
    }
    button3.onClicked: {

        var component = Qt.createComponent("qrc:/FolderVideo.qml")
        mainroot.currentwindow = "main"
        var window    = component.createObject(mediaroot)

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
