import QtQuick 2.2
import QtQuick.Dialogs 1.0
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtMultimedia 5.0

FileDialog {
    id: fileDialog
    property string pictureSource: ""
    width: resWidth
    height: resHeight
    title: "Open your Picture"
    folder: "file:///media/usb/"

    onAccepted: {
        pictureSource= fileDialog.fileUrl;
        console.log("You chose: " + pictureSource)
        mainroot.currentwindow = "main"
        var component = Qt.createComponent("qrc:/Picture.qml")
        var window    = component.createObject(pictureroot, {'folder':pictureSource})

    }

    onRejected: {
        mainroot.currentwindow = "main"
        console.log("Canceled")
        //var component = Qt.createComponent("qrc:/PagePicture.qml")
        //var window    = component.createObject(picture)
    }

    Component.onCompleted: visible = true
}
