import QtQuick 2.7
import QtQuick.Controls 2.0
Rectangle{

    id: picture
    anchors.fill: parent
     property string folder

    Image {

        width: resWidth
        height: resHeight
        fillMode: Image.Stretch
        horizontalAlignment: Image.AlignLeft
        verticalAlignment: Image.AlignTop

        source: folder
    }
    Button{

        text: "fechar"
        onClicked: {


           // video.enabled = false
            picture.visible = false
//            var component = Qt.createComponent("PageVideo.qml")
//            var window    = component.createObject(video)



        }

    }
}
