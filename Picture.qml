import QtQuick 2.7
import QtQuick.Controls 2.0

Rectangle{
    id: picture
    anchors.fill: parent
    focus: true
    visible: true

    property string folder
    MouseArea{
        anchors.fill: parent
    }

    Image {
        id: image
        anchors.fill: parent
        visible: true
        focus: visible
        fillMode: Image.PreserveAspectFit
        horizontalAlignment: Image.AlignHCenter
        verticalAlignment: Image.AlignVCenter
        source: folder
    }


    Keys.onReleased: {
        console.log("Pressionou")
        if (event.key === Qt.Key_B) {

            picture.visible = false
            image.visible=false
            mainroot.currentwindow = "main"

            var component = Qt.createComponent("qrc:/PagePicture.qml")
            var window    = component.createObject(picture)

        }
    }
}
