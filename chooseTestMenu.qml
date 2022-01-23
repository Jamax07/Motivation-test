import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQml 2.12

Item {
    id:chooseMenu
    Image {
        id: mainMenuPic
        source: "qrc:/pics/common/pics/mainMenu.jpg"
        anchors.fill:parent
        ComboBox {
            id: comboBox
            anchors.left: parent.horizontalCenter
            anchors.leftMargin: parent.width/28
            anchors.top: parent.top
            anchors.topMargin: parent.height/3
            width: parent.width/2.75
            height: parent.height/16
            model: ListModel {
                id: model
                ListElement { text: "Choose your test" }
                ListElement { text: "Motivation test" }
                ListElement { text: "Create new" }
            }
        }
        RoundButton{
            id:startButton
            width: parent.width / 8
            anchors.top: comboBox.bottom
            anchors.topMargin: comboBox.height*5
            anchors.left: comboBox.left
            anchors.leftMargin: comboBox.width/2-width/2
            Image {
                id: startButtonPic
                source: "pics/common/pics/circleStart.png"
                anchors.fill: parent
            }
            onClicked: {
                if(comboBox.currentText ==="Motivation test"){
                    console.log(comboBox.currentText)
                    mainMenuPic.visible = false
                    motivStart.visible = true
                }
            }
        }
    }
    TestStart{
        id:motivStart
        width: chooseMenu.width
        height: chooseMenu.height
        visible: false
    }
    Button{
        visible: false
    }

}
