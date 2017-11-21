import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtGamepad 1.0

ApplicationWindow {
    id: mainroot
    property string currentwindow: "main"
    visible: true
    width: resWidth
    height: resHeight
    title: qsTr("Center Play")
    //visible: false

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
        buttonAKey: Qt.Key_S        //X             //RPi3 - Quadrado
        buttonBKey: Qt.Key_Space    //O             //RPi3 - X
        buttonXKey: Qt.Key_B        //Triangulo     //RPi3 - Triangulo
        buttonYKey: Qt.Key_Y        //Quadrado      //RPi3 - L1
        buttonL1Key: Qt.Key_L       //L1            //Rpi3 - L2
        buttonR1Key: Qt.Key_R       //R1            //RPi3 - R2
        rightKey: Qt.Key_Up
        leftKey: Qt.Key_Down
        upKey: Qt.Key_U
        downKey: Qt.Key_D
        buttonGuideKey: Qt.Key_G
        buttonL2Key: Qt.Key_Q
        buttonL3Key: Qt.Key_W
        buttonR2Key: Qt.Key_E
        buttonR3Key: Qt.Key_T
        buttonSelectKey: Qt.Key_I
        buttonStartKey: Qt.Key_O
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        focus: true
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

            if(mainroot.currentwindow !== "main"){

                return;
            }


            else if (event.key === Qt.Key_R) {
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
            else if (event.key === Qt.Key_B) {
                swipeView.currentIndex = 0;
            }
            else if (event.key === Qt.Key_Up || event.key === Qt.Key_Down) {
                if(swipeView.currentIndex == 0){
                    nextItemInFocusChain().forceActiveFocus();
                }
                if(swipeView.currentIndex == 1){
                    nextItemInFocusChain().nextItemInFocusChain().
                    nextItemInFocusChain().nextItemInFocusChain().
                    nextItemInFocusChain().nextItemInFocusChain().forceActiveFocus();
                }
                if(swipeView.currentIndex == 2){
                    nextItemInFocusChain().nextItemInFocusChain().
                    nextItemInFocusChain().nextItemInFocusChain().
                    nextItemInFocusChain().nextItemInFocusChain().
                    nextItemInFocusChain().nextItemInFocusChain().
                    nextItemInFocusChain().forceActiveFocus();
                }
                if(swipeView.currentIndex == 3){
                    nextItemInFocusChain().nextItemInFocusChain().
                    nextItemInFocusChain().nextItemInFocusChain().
                    nextItemInFocusChain().nextItemInFocusChain().
                    nextItemInFocusChain().nextItemInFocusChain().
                    nextItemInFocusChain().nextItemInFocusChain().
                    nextItemInFocusChain().nextItemInFocusChain().forceActiveFocus();
                }
                if(swipeView.currentIndex == 4){
                    nextItemInFocusChain().nextItemInFocusChain().
                    nextItemInFocusChain().nextItemInFocusChain().
                    nextItemInFocusChain().nextItemInFocusChain().
                    nextItemInFocusChain().nextItemInFocusChain().
                    nextItemInFocusChain().nextItemInFocusChain().
                    nextItemInFocusChain().nextItemInFocusChain().
                    nextItemInFocusChain().forceActiveFocus();
                }
            }
        }
    }
}
