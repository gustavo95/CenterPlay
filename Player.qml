import QtMultimedia 5.0
import QtQuick 2.2
import QtQuick.Window 2.0
import QtQuick.Controls 2.0
Rectangle{
    id:video
    anchors.fill: parent
    focus: true
    visible: true
    property string folder
    MouseArea{
        anchors.fill: parent
    }

    MediaPlayer {
        id: player

        autoPlay: true
        source: folder
    }

    VideoOutput {
        focus: visible
        visible: true
        width: resWidth
        height: resHeight
        anchors.fill: parent
        source: player


    }

    Keys.onReleased: {
        console.log("Pressionou")
        if (event.key === Qt.Key_B) {
            mainroot.currentwindow = "main"
            player.stop()
            video.enabled = false
            video.visible = false
            var component = Qt.createComponent("qrc:/PageVideo.qml")
            if (component.status != Component.Ready){
                if(component.status == Component.Error){
                    console.debug("Error:" + component.errorString())
                }

            }
            var window    = component.createObject(video)
        }


    }

}
