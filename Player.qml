import QtMultimedia 5.0
import QtQuick 2.7
import QtQuick.Window 2.0
import QtQuick.Controls 2.0

Rectangle{
    id:video
    anchors.fill: parent
    focus: true
    visible: true
    property string folder
    Image {
        id: image
        anchors.fill: parent
        visible: isMusic()
        fillMode: Image.PreserveAspectFit
        horizontalAlignment: Image.AlignHCenter
        verticalAlignment: Image.AlignVCenter
        source: "img/music.png"


    }

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
            if (component.status !== Component.Ready){
                if(component.status === Component.Error){
                    console.debug("Error:" + component.errorString())
                }
            }
            var window    = component.createObject(video)
        }
        if (event.key === Qt.Key_S){
            player.pause()
        }
        if (event.key === Qt.Key_Space){
            player.play()
        }




    }
    function isMusic(){
        var x = true
        if (folder.search(".mp3")=== -1){
            x = false
        }
        return x

    }

}
