import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtGamepad 1.0

ApplicationWindow {
    visible: true
    width: resWidth
    height: resHeight
    title: qsTr("Center Play")

    Gamepad {
        id: gamepad1
        deviceId: GamepadManager.connectedGamepads.length > 0 ? GamepadManager.connectedGamepads[0] : -1
    }

    Connections {
        target: GamepadManager
        onGamepadConnected: gamepad1.deviceId = deviceId
    }

    GamepadKeyNavigation {
        id: gamepadKeyNavigation
        gamepad: gamepad1
        active: true
        buttonAKey: Qt.Key_A //X
        buttonBKey: Qt.Key_B //O
        buttonXKey: Qt.Key_X //Triangulo
        buttonYKey: Qt.Key_Y //Quadrado
        buttonL1Key: Qt.Key_L //L1
        buttonR1Key: Qt.Key_R //R1
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        interactive: false
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

        Keys.onReleased: {
            if (event.key === Qt.Key_R) {
                swipeView.currentIndex = swipeView.currentIndex + 1;
                if(swipeView.currentIndex > 4){
                    swipeView.currentIndex = 4;
                }
            }
            else if (event.key === Qt.Key_L) {
                swipeView.currentIndex = swipeView.currentIndex - 1;
                if(swipeView.currentIndex < 0){
                    swipeView.currentIndex = 0;
                }
            }
            else if (event.key === Qt.Key_Right) {
                if(swipeView.currentIndex == 0){
                    PageMain.focus = true;
                }
            }
            else if (event.key === Qt.Key_Left) {

            }
        }
    }
}
