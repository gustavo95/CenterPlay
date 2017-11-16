import QtQuick 2.0
import QtQuick.Window 2.0
import QtWebEngine 1.3
import QtQuick.VirtualKeyboard 1.3
import QtQuick.Controls 2.0

Rectangle{
    id: root

    anchors.fill: parent
     visible: true
     enabled: true
    WebEngineView {

        visible: true
        focus: visible
        anchors.fill: parent
        url: "https://www.netflix.com/browse"
    }


    Keys.onReleased: {
        if (event.key === Qt.Key_S) {
            inputPanel.visible = !inputPanel.visible

        }
        else if (event.key === Qt.Key_B) {
             root.visible = !root.visible
            mainroot.currentwindow = "main"


        }




    }

    InputPanel {
        id:inputPanel

        visible: false
        height: parent.height*0.45; width: parent.width*0.66

        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter


    }
}
