import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 1920
    height: 1080
    title: qsTr("Center Play")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: 0

        PageMain {
            visible: true
        }

        PageVideo{
            visible: true
        }

        PageMusic{
            visible: true
        }

        PagePicture{
            visible: true
        }

        PageGame{
            visible: true
        }
    }
}
