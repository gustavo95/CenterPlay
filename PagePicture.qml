import QtQuick 2.4

PagePictureForm {
    id: pictureroot
    visible: true
    enabled: true

    button1.onClicked: {
        console.log("Button \"picture\" clicked.");
        var component = Qt.createComponent("qrc:/FolderPicture.qml")
        if (component.status !== Component.Ready){
            if(component.status === Component.Error){
                console.debug("Error:" + component.errorString())
            }

        }
        var window    = component.createObject(pictureroot)
        mainroot.currentwindow = "other"



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
