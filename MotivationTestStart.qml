import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQml 2.12
import QtQuick.Layouts 1.12

ColumnLayout{
    spacing: 5
    Text{
        Layout.alignment: Qt.AlignTop|Qt.AlignCenter
        text:"Мальчики (девочки) разговаривали о школе.
Первый мальчик сказал: «Я хожу в школу потому,
что меня мама заставляет.
Если бы не мама, я бы в школу не ходил»."
        font.pointSize: 20
    }
    Rectangle{
        Layout.alignment: Qt.AlignBottom
        Layout.fillHeight: true
        Layout.fillWidth: true
        Image {
            id: firstPic
            source: "qrc:/new/motivTest/pics/motivationTest/firstPic.png"
            anchors.fill: parent
        }
    }
}

