import QtQuick 2.2
import QtQuick.Dialogs 1.0
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtMultimedia 5.0

FileDialog {
    id: fileDialog
    property string musicSource: ""
    width: resWidth
    height: resHeight
    title: "Open your song"
    folder: "file:///media/usb/"

    onAccepted: {
        musicSource= fileDialog.fileUrl;
        console.log("You chose: " + musicSource)
        mainroot.currentwindow = "main"
        //        var component = Qt.createComponent("qrc:/Player.qml")
        //        if (component.status !== Component.Ready){
        //            if(component.status === Component.Error){
        //                console.debug("Error:" + component.errorString())
        //            }
        //        }
        //        var window = component.createObject(root, {'folder':musicSource})

        //Qt.quit()

        videoLauncher.launchVideo(musicSource);

        //var component = Qt.createComponent("qrc:/PageMusic.qml")
        //var window    = component.createObject(root)
    }

    onRejected: {
        mainroot.currentwindow = "main"
        console.log("Canceled")
        //Qt.quit()
    }

    Component.onCompleted: visible = true
}
