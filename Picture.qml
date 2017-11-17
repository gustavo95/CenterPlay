import QtQuick 2.7
import QtQuick.Controls 2.0

Rectangle{
    id: picture
    anchors.fill: parent
    focus: visible
    visible: true

    property string folder

    Image {
        width: resWidth
        height: resHeight
        fillMode: Image.Stretch
        horizontalAlignment: Image.AlignLeft
        verticalAlignment: Image.AlignTop
        source: folder
    }


    Keys.onReleased: {
        console.log("Pressionou")
        if (event.key === Qt.Key_B) {

            picture.visible = false
            mainroot.currentwindow = "main"

            var component = Qt.createComponent("qrc:/PagePicture.qml")
            var window    = component.createObject(picture)

        }
    }
}
