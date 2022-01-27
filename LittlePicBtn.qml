import QtQuick 2.0
import QtQuick.Controls 1.4

Button{
    property string littlePic: ""
    property int indLittlePic: value
    id:backBtn
    width: mainLayout.width/5
    height: mainLayout.height/6
    Image {
        anchors.fill: parent
        source: backBtn.littlePic
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            mainLayout.currentIndex=backBtn.indLittlePic
            timer.start()
        }
    }
}
