import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: root
    property alias button1: button1
    property alias text1: text1
    width: resWidth
    height: resHeight

    property double icon_size: 50 + 125 * root.width / 1920

    RowLayout {
        id: rowlayout
        x: root.width / 2 - rowlayout.width / 2
        y: root.height / 2 - rowlayout.height / 2
        width: (icon_size)
        height: icon_size
        opacity: 1

        ColumnLayout {
            id: columnLayout1

            Button {
                id: button1
                KeyNavigation.down: button1
                KeyNavigation.up: button1
                width: icon_size
                height: icon_size
                text: qsTr("")
                Layout.fillHeight: false
                Layout.fillWidth: false

                background: Rectangle {
                    implicitWidth: icon_size
                    implicitHeight: icon_size
                    opacity: enabled ? 1 : 0.3
                    border.color: button1.focus ? "#fa0" : "#fff"
                    color: button1.pressed ? "#fed" : "#fff"
                    border.width: 2
                    radius: 2
                }

                Image {
                    id: image1
                    anchors.fill: parent
                    source: "img/usb_orange.png"
                }
            }

            Text {
                id: button1Text
                text: button1.focus ? qsTr("USB") : qsTr("")
                font.pixelSize: fontSize * root.width / root.height
            }
        }
    }

    Text {
        id: title
        x: root.width / 2 - title.width / 2
        y: 50
        text: qsTr("Fotos")
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
}
