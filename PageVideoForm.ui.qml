import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: root
    property alias button1: button1
    property alias button2: button2
    property alias button3: button3
    property alias text1: text1
    width: resWidth
    height: resHeight

    property double spacing_size: 50 * (root.width > 720 ? root.width / 720 : 3 * root.width / 1920)
    property double icon_size: 50 + 125 * root.width / 1920

    RowLayout {
        id: rowlayout
        x: root.width / 2 - rowlayout.width / 2
        y: root.height / 2 - rowlayout.height / 2
        width: 3 * (icon_size + spacing_size)
        height: icon_size
        spacing: spacing_size
        opacity: 1

        Button {
            id: button1
            width: icon_size
            height: icon_size
            text: qsTr("")
            Layout.fillHeight: false
            Layout.fillWidth: false

            Image {
                id: image1
                anchors.fill: parent
                source: "img/netflix.png"
            }
        }

        Button {
            id: button2
            width: icon_size
            height: icon_size
            text: qsTr("")
            Layout.fillHeight: false
            Layout.fillWidth: false

            background: Rectangle {
                implicitWidth: icon_size
                implicitHeight: icon_size
                opacity: enabled ? 1 : 0.3
                border.color: button2.focus ? "#59f" : "#fff"
                color: button2.pressed ? "#cef" : "#fff"
                border.width: 2
                radius: 2
            }

            Image {
                id: image2
                anchors.fill: parent
                source: "img/music_icon.png"
            }
        }

        Button {
            id: button3
            width: icon_size
            height: icon_size
            text: qsTr("")
            Layout.fillHeight: false
            Layout.fillWidth: false

            background: Rectangle {
                implicitWidth: icon_size
                implicitHeight: icon_size
                opacity: enabled ? 1 : 0.3
                border.color: button3.focus ? "#59f" : "#fff"
                color: button3.pressed ? "#cef" : "#fff"
                border.width: 2
                radius: 2
            }

            Image {
                id: image3
                anchors.fill: parent
                source: "img/usb_blue.png"
            }
        }
    }

    Text {
        id: text1
        x: root.width / 2 - text1.width / 2
        y: root.height / 2 + 200 * root.width / root.height
        text: qsTr("hh:mm dd/MM/yyyy")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 10 * root.width / root.height
    }
}
