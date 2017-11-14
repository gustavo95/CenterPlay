import QtQuick 2.4
import QtQuick.Dialogs 1.2

//https://doc.qt.io/qt-5/qtwebengine-webengine-minimal-example.html


PageVideoForm {
    id: root
    visible: true
    enabled: true

    button1.onClicked: {
        console.log("Button \"Netflix\" clicked.");
        var component = Qt.createComponent("qrc:/PageNetflix.qml")
        if (component.status !== Component.Ready){
            if(component.status === Component.Error){
                console.debug("Error:" + component.errorString())
            }

        }

        var window    = component.createObject(root)
        if (window == null){
            console.log("Nao foi")

        }
        else{
             //window.show()
            console.log("foi")
        }


    }
    button2.onClicked: {
        console.log("Button \"Youtube\" clicked.");
        var component = Qt.createComponent("qrc:PageYoutube.qml")
        if (component.status != Component.Ready){
            if(component.status == Component.Error){
                console.debug("Error:" + component.errorString())
            }

        }
        var window    = component.createObject(root)
        //window.show()
    }
    button3.onClicked: {

       var component = Qt.createComponent("qrc:/FolderVideo.qml")
        if (component.status != Component.Ready){
            if(component.status == Component.Error){
                console.debug("Error:" + component.errorString())
            }

        }
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
