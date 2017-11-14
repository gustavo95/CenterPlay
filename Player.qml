import QtMultimedia 5.0
import QtQuick 2.2
import QtQuick.Window 2.0
import QtQuick.Controls 2.0
    Rectangle{

        id:video
        anchors.fill: parent

        property string folder
        MediaPlayer {
            id: player

            autoPlay: true

            source: folder
        }

        VideoOutput {
            visible: true
            width: resWidth
            height: resHeight
            anchors.fill: parent
            source: player

        }

        Button{

            text: "fechar"
            onClicked: {

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

        Button {
            id: button
            text: ""
            property string type: "pause"
            x: video.width / 5 - button.width / 5
            y: video.height /5 - button.height / 5
            onClicked: {
                player.pause()
            }
            background: Rectangle {
                color: button.pressed ? "#a2a2a2" : "#f2f2f2"
                border.width: 1
                border.color: "#909090"
                radius: 5
                implicitWidth: 100
                implicitHeight: 40
            }

            Image {
                anchors.fill: parent
                anchors.margins: 5
                anchors.horizontalCenter: button.horizontalCenter
                anchors.verticalCenter: button.verticalCenter
                fillMode: Image.PreserveAspectFit
                source: "img/" + button.type + ".png"
            }
        }
        Button {
            id: buttonplay
            text: ""
            property string type: "play"
            x: video.width / 6 - buttonplay.width / 6
            y: video.height /12 - buttonplay.height / 12
            onClicked: {
                player.play()
            }

            background: Rectangle {
                color: buttonplay.pressed ? "#a2a2a2" : "#f2f2f2"
                border.width: 1
                border.color: "#909090"
                radius: 5
                implicitWidth: 100
                implicitHeight: 40
            }

            Image {
                anchors.fill: parent
                anchors.margins: 10
                anchors.horizontalCenter: buttonplay.horizontalCenter
                anchors.verticalCenter: buttonplay.verticalCenter
                fillMode: Image.PreserveAspectFit
                source: "img/" + buttonplay.type + ".png"
            }
        }
    }


