import QtQuick 2.2
import QtQuick.Dialogs 1.0
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtMultimedia 5.0

FileDialog {
    id: fileDialog
    property string videoSource: ""

    width: resWidth
    height: resHeight
    title: "Open your video"
    folder: "file:///home/"
    onAccepted: {
        videoSource= fileDialog.fileUrl;
        console.log("You chose: " + videoSource)
        mainroot.currentwindow = "other"
        console.log(currentwindow)
        var component = Qt.createComponent("qrc:/Player.qml")
        var window    = component.createObject(mediaroot, {'folder':videoSource})

    }
    onRejected: {

        console.log("foi")

    }
    Keys.onReleased: {
        console.log(event.key)

    }
    MouseArea {
        anchors.fill: parent
        onPressed: {
            console.log("press "+mouse.source)
             console.log("press "+mouse.modifiers)
        }
        onClicked: {
            console.log("clicked "+mouse.modifiers)
             console.log("clicked "+mouse.source)
        }
    }


    Component.onCompleted: visible = true

}
