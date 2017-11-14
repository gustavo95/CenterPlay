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

        var component = Qt.createComponent("qrc:/Player.qml")
        var window    = component.createObject(root, {'folder':videoSource})

        //Qt.quit()
    }
    onRejected: {
        console.log("Canceled")
        //Qt.quit()
    }


    Component.onCompleted: visible = true

}
