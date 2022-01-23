import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQml 2.12
import QtMultimedia 5.12

Window {
    id:mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ChooseTestMenu{
        width: parent.width
        height: parent.height
    }
}
