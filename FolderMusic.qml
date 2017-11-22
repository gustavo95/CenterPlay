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

        videoLauncher.launchVideo(musicSource);

        nextItemInFocusChain().forceActiveFocus();
    }

    onRejected: {
        mainroot.currentwindow = "main"
        console.log("Canceled")
        nextItemInFocusChain().forceActiveFocus();
    }

    Component.onCompleted: visible = true
}
