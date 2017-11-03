import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: root
    property alias button1: button1
    property alias button2: button2
    property alias button3: button3
    property alias button4: button4
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
                KeyNavigation.left: button1
                KeyNavigation.right: button2
                width: icon_size
                height: icon_size
                text: qsTr("")
                Layout.fillHeight: false
                Layout.fillWidth: false

                background: Rectangle {
                    implicitWidth: icon_size
                    implicitHeight: icon_size
                    opacity: enabled ? 1 : 0.3
                    border.color: button1.focus ? "#59f" : "#fff"
                    color: button1.pressed ? "#cef" : "#fff"
                    border.width: 2
                    radius: 2
                }

                Image {
                    id: image1
                    anchors.fill: parent
                    source: "img/fo.png"
                }
            }
            Text {
                id: button1Text
                text: button1.focus ? qsTr("Game 1") : qsTr("")
                font.pixelSize: fontSize * root.width / root.height
            }
        }

        ColumnLayout {
            id: columnLayout2

                Button {
                    id: button2
                    KeyNavigation.left: button1
                    KeyNavigation.right: button3
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
                        source: "img/bf4.png"
                    }
                }

                Text {
                    id: button2Text
                    text: button2.focus ? qsTr("Game 2") : qsTr("")
                    font.pixelSize: fontSize * root.width / root.height
                }
            }

            ColumnLayout {
                id: columnLayout3

                Button {
                    id: button3
                    KeyNavigation.left: button2
                    KeyNavigation.right: button4
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
                        source: "img/sonic.png"
                    }
                }

                Text {
                    id: button3Text
                    text: button3.focus ? qsTr("Game 3") : qsTr("")
                    font.pixelSize: fontSize * root.width / root.height
                }
            }

            ColumnLayout {
                id: columnLayout4

                Button {
                    id: button4
                    KeyNavigation.left: button3
                    KeyNavigation.right: button4
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
                        id: image
                        anchors.fill: parent
                        source: "img/saw.ico"
                    }
                }

                Text {
                    id: button4Text
                    text: button4.focus ? qsTr("Game 4") : qsTr("")
                    font.pixelSize: fontSize * root.width / root.height
                }
            }
        }

        Text {
            id: title
            x: root.width / 2 - title.width / 2
            y: 50
            text: qsTr("Jogos")
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
