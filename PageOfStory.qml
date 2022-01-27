import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.12



ColumnLayout{
    property string txt: ""
    property string pathForPic: ""
    property int index
        id:layout
        spacing: 5
        Text{
            Layout.alignment: Qt.AlignTop|Qt.AlignCenter
            text:layout.txt
            font.pointSize: 15
        }
        Rectangle{
            Layout.alignment: Qt.AlignBottom
            Layout.fillHeight: true
            Layout.fillWidth: true
            Image {
                source: layout.pathForPic
                anchors.fill: parent
            }
        }
        Button{
            Layout.fillWidth: true
            text: "NEXT"
            onClicked: {
                mainLayout.currentIndex = index
            }
        }
    }
