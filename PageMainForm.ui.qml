import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: root
    property alias button1: button1
    property alias button2: button2
    property alias button3: button3
    property alias button4: button4
    property alias buttonPower: buttonPower
    property alias text1: text1
    width: resWidth
    height: resHeight

    property double spacing_size: 50 * (root.width > 720 ? root.width / 720 : 3 * root.width / 1920)
    property double icon_size: 50 + 125 * root.width / 1920

    RowLayout {
        id: rowlayout
        x: root.width / 2 - rowlayout.width / 2
        y: root.height / 2 - rowlayout.height / 2
        width: 4 * (icon_size + spacing_size)
        height: icon_size
        spacing: spacing_size
        opacity: 1

        ColumnLayout {
            id: columnLayout1

            Button {
                id: button1
                focus: true
                KeyNavigation.down: button1
                KeyNavigation.up: button2
                width: icon_size / 3
                height: icon_size / 3
                text: qsTr("")
                Layout.fillHeight: false
                Layout.fillWidth: false

                background: Rectangle {
                    implicitWidth: icon_size
                    implicitHeight: icon_size
                    opacity: enabled ? 1 : 0.3
                    border.color: button1.focus ? "#c00" : "#fff"
                    color: button1.pressed ? "#fdd" : "#fff"
                    border.width: 2
                    radius: 2
                }

                Image {
                    id: image1
                    enabled: true
                    anchors.fill: parent
                    source: "img/video_icon.png"
                }
            }

            Text {
                id: button1Text
                text: button1.focus ? qsTr("Videos") : qsTr("")
                font.pixelSize: fontSize * root.width / root.height
            }
        }

        ColumnLayout {
            id: columnLayout2

            Button {
                id: button2
                KeyNavigation.down: button1
                KeyNavigation.up: button3
                width: icon_size
                height: icon_size
                text: qsTr("")
                Layout.fillHeight: false
                Layout.fillWidth: false

                background: Rectangle {
                    implicitWidth: icon_size
                    implicitHeight: icon_size
                    opacity: enabled ? 1 : 0.3
                    border.color: button2.focus ? "#2d6" : "#fff"
                    color: button2.pressed ? "#bfa" : "#fff"
                    border.width: 2
                    radius: 2
                }

                Image {
                    id: image2
                    anchors.fill: parent
                    source: "img/music_icon.png"
                }
            }

            Text {
                id: button2Text
                text: button2.focus ? qsTr("Musicas") : qsTr("")
                font.pixelSize: fontSize * root.width / root.height
            }
        }

        ColumnLayout {
            id: columnLayout3

            Button {
                id: button3
                KeyNavigation.down: button2
                KeyNavigation.up: button4
                width: icon_size
                height: icon_size
                text: qsTr("")
                Layout.fillHeight: false
                Layout.fillWidth: false

                background: Rectangle {
                    implicitWidth: icon_size
                    implicitHeight: icon_size
                    opacity: enabled ? 1 : 0.3
                    border.color: button3.focus ? "#fa0" : "#fff"
                    color: button3.pressed ? "#fed" : "#fff"
                    border.width: 2
                    radius: 2
                }

                Image {
                    id: image3
                    anchors.fill: parent
                    source: "img/image_icon.png"
                }
            }

            Text {
                id: button3Text
                text: button3.focus ? qsTr("Fotos") : qsTr("")
                font.pixelSize: fontSize * root.width / root.height
            }
        }

        ColumnLayout {
            id: columnLayout4

            Button {
                id: button4
                KeyNavigation.down: button3
                KeyNavigation.up: buttonPower
                width: icon_size
                height: icon_size
                text: ""
                Layout.fillHeight: false
                Layout.fillWidth: false

                background: Rectangle {
                    implicitWidth: icon_size
                    implicitHeight: icon_size
                    opacity: enabled ? 1 : 0.3
                    border.color: button4.focus ? "#59f" : "#fff"
                    color: button4.pressed ? "#cef" : "#fff"
                    border.width: 2
                    radius: 2
                }

                Image {
                    id: image4
                    anchors.fill: parent
                    source: "img/game_icon.png"
                }
            }
            Text {
                id: button4Text
                text: button4.focus ? qsTr("Jogos") : qsTr("")
                font.pixelSize: fontSize * root.width / root.height
            }
        }
    }

    Text {
        id: title
        x: root.width / 2 - title.width / 2
        y: 50
        text: qsTr("Center Play")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: (fontSize+4) * root.width / root.height
    }

    Text {
        id: text1
        x: root.width / 2 - text1.width / 2
        y: root.height / 2 + 200 * root.width / root.height
        text: qsTr("hh:mm dd/MM/yyyy")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: fontSize * root.width / root.height
    }

    Button {
        id: buttonPower
        KeyNavigation.down: button4
        KeyNavigation.up: buttonPower
        x: root.width * 9 / 10
        y: root.height / 2 - buttonPower.height / 2 + 10 + 200 * root.width / root.height
        text: qsTr("")

        background: Rectangle {
            implicitWidth: icon_size / 3
            implicitHeight: icon_size / 3
            opacity: enabled ? 1 : 0.3
            border.color: buttonPower.focus ? "#000" : "#fff"
            color: buttonPower.pressed ? "#555" : "#fff"
            border.width: 2
            radius: 2
        }

        Image {
            id: image
            anchors.fill: parent
            source: "img/power_icon.png"
        }
    }
}
