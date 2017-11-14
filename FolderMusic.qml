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
    folder: "file:///home/"
    onAccepted: {
       musicSource= fileDialog.fileUrl;
        console.log("You chose: " + musicSource)

        var component = Qt.createComponent("qrc:/Player.qml")
        if (component.status != Component.Ready){
            if(component.status == Component.Error){
                console.debug("Error:" + component.errorString())
            }

        }
        var window    = component.createObject(root, {'folder':musicSource})

        //Qt.quit()
    }
    onRejected: {
        console.log("Canceled")
        //Qt.quit()
    }


Component.onCompleted: visible = true

}
