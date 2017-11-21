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
    folder: "file:///media/usb/"

    onAccepted: {
        videoSource= fileDialog.fileUrl;
        console.log("You chose: " + videoSource)
        //mainroot.currentwindow = "other"
        console.log(currentwindow)

        videoLauncher.launchVideo(videoSource);

        var component = Qt.createComponent("qrc:/PageVideo.qml")
        var window    = component.createObject(mediaroot)
    }

    onRejected: {
        mainroot.currentwindow = "main"

        console.log("rejected")


    }

    Component.onCompleted: visible = true
}
