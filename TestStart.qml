import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQml 2.12
import QtQuick.Layouts 1.12
import my.test 1.0

StackLayout {
    id: mainLayout
    anchors.fill: parent
    currentIndex: 0
    PageOfStory{
        txt: motiveData[0][0]
        pathForPic: motiveData[0][1]
        index: 1
    }
    PageOfStory{
        txt: motiveData[1][0]
        pathForPic: motiveData[1][1]
        index: 2
    }
    PageOfStory{
        txt: motiveData[2][0]
        pathForPic: motiveData[2][1]
        index: 3
    }
    PageOfStory{
        txt: motiveData[3][0]
        pathForPic: motiveData[3][1]
        index: 4
    }
    PageOfStory{
        txt: motiveData[4][0]
        pathForPic: motiveData[4][1]
        index: 5
    }
    PageOfStory{
        txt: motiveData[5][0]
        pathForPic: motiveData[5][1]
        index: 6
    }

    Item{
        id:seventhLayout
        visible: false
        Timer{
            id:timer
            interval: 2000; running: false; repeat: false
            onTriggered:{
                mainLayout.currentIndex = 6
            }
        }

        Component {
            id: nameDelegate
            Button{
                id:backBtn
                width: mainLayout.width/5
                height: mainLayout.height/6
                Image {
                    anchors.fill: parent
                    source: modelData.pathToPic
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        mainLayout.currentIndex=modelData.ind
                        timer.start()
                    }
                }
            }
        }
        Column{
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: mainLayout.width/5
            Repeater{
                model: [
                    { pathToPic: motiveData[0][1], ind: 0 },
                    { pathToPic: motiveData[1][1], ind: 1 },
                    { pathToPic: motiveData[2][1], ind: 2 },
                    { pathToPic: motiveData[3][1], ind: 3 },
                    { pathToPic: motiveData[4][1], ind: 4 },
                    { pathToPic: motiveData[5][1], ind: 5 }
                ]
                delegate: nameDelegate
            }
        }
        Text{
            id:firstQuest
            anchors.top: parent.top
            anchors.rightMargin: 5
            text:"⦁	А как по-твоему, кто из них прав? Почему?"
            font.pointSize: parent.width/40
        }
        RowLayout {
            id:checkBoxRow1
            anchors.top:firstQuest.bottom
            anchors.topMargin: 5
            ButtonGroup {
                     id: childGroup
                     exclusive: true
                 }
            Repeater{
                model: [
                    {enumMotive:Test.External_motive, txt: "First"},
                    {enumMotive:Test.Educational_motive, txt: "Second"},
                    {enumMotive:Test.Game_motive, txt: "Third"},
                    {enumMotive:Test.Positional_motive, txt: "Fourth"},
                    {enumMotive:Test.Social_motive, txt: "Fifth"},
                    {enumMotive:Test.Score_motive, txt: "Sixth"}
                ]
                delegate: CheckBox {
                    property int motive: modelData.enumMotive
                    checked: false
                    text: modelData.txt
                    ButtonGroup.group: childGroup
                }
            }
        }
        Text{
            id:secondQuest
            anchors.top: checkBoxRow1.bottom
            anchors.bottomMargin: 25
            text:"⦁	С кем из них ты хотел бы вместе играть?
Почему?"
            font.pointSize: parent.width/40
        }
        RowLayout {
            id:checkBoxRow2
            anchors.top:secondQuest.bottom
            anchors.topMargin: 5
            ButtonGroup {
                     id: childGroup2
                     exclusive: true
                 }
            Repeater{
                model: [
                    {enumMotive:Test.External_motive, txt: "First"},
                    {enumMotive:Test.Educational_motive, txt: "Second"},
                    {enumMotive:Test.Game_motive, txt: "Third"},
                    {enumMotive:Test.Positional_motive, txt: "Fourth"},
                    {enumMotive:Test.Social_motive, txt: "Fifth"},
                    {enumMotive:Test.Score_motive, txt: "Sixth"}
                ]
                delegate: CheckBox {
                    property int motive: modelData.enumMotive
                    checked: false
                    text: modelData.txt
                    ButtonGroup.group: childGroup2
                }
            }
        }
        Text{
            id:thirdQuest
            anchors.top: checkBoxRow2.bottom
            anchors.rightMargin: 25
            text:"⦁	С кем из них ты хотел бы вместе учиться?
Почему?"
            font.pointSize: parent.width/40
        }
        RowLayout {
            id:checkBoxRow3
            anchors.top:thirdQuest.bottom
            anchors.topMargin: 5
            ButtonGroup {
                id: childGroup3
                exclusive: true
            }
            Repeater{
                model: [
                    {enumMotive:Test.External_motive, txt: "First"},
                    {enumMotive:Test.Educational_motive, txt: "Second"},
                    {enumMotive:Test.Game_motive, txt: "Third"},
                    {enumMotive:Test.Positional_motive, txt: "Fourth"},
                    {enumMotive:Test.Social_motive, txt: "Fifth"},
                    {enumMotive:Test.Score_motive, txt: "Sixth"}
                ]
                delegate: CheckBox {
                    property int motive: modelData.enumMotive
                    checked: false
                    text: modelData.txt
                    ButtonGroup.group: childGroup3
                }
            }
        }
        Button{
            id:finishBtn
            width: mainLayout.width/5
            height: mainLayout.height/13
            anchors.bottom: seventhLayout.bottom
            anchors.left: checkBoxRow3.horizontalCenter
            anchors.bottomMargin: 20
            Image {
                source: "pics/common/pics/finish-button-png.png"
                anchors.fill: parent
            }
            onClicked: {
                if(childGroup.checkState ==Qt.PartiallyChecked &&childGroup2.checkState==Qt.PartiallyChecked
                        &&childGroup3.checkState==Qt.PartiallyChecked){
                    res.cleanMotives()
                    res.updateScore(childGroup.checkedButton.motive)
                    res.updateScore(childGroup2.checkedButton.motive)
                    res.updateScore(childGroup3.checkedButton.motive)
                    res.getResult()
                }
            }
        }
        Connections{
            target: res
            onExtraQuestionSignal:{
                console.log("extraQuestionSignal")
                firstExtraPiс.source = motiveData[motiveFirst][1]
                firstExtraText.text = motiveData[motiveFirst][0]
                secondExtraPic.source = motiveData[motiveSecond][1]
                secondExtraText.text = motiveData[motiveSecond][0]
                mainLayout.currentIndex = 7
                mainBtn.motiveFirst = motiveFirst
                mainBtn.motiveSecond = motiveSecond
            }
        }
    }
    ColumnLayout{
        id:eighthLayout
        spacing: 5
        visible: false

        Text{
            id:mainQuest
            Layout.alignment: Qt.AlignTop|Qt.AlignCenter
            text:"Контрольный вопрос:
С кем ты бы хотел дружить в будущем?"
            font.pointSize: 15
        }
        Rectangle{
            Layout.fillHeight: true
            Layout.fillWidth: true
            TextArea {
                id: firstExtraText
                font.pointSize: 15
                width: mainLayout.width/2
                height: mainLayout.height/3
                wrapMode: TextEdit.WordWrap
                anchors.left: parent.left
                anchors.right: parent.horizontalCenter
                anchors.rightMargin: 5
            }
            TextArea {
                id: secondExtraText
                font.pointSize: 15
                width: firstExtraText.width
                height: mainLayout.height/3
                wrapMode: TextEdit.WordWrap
                anchors.left: parent.horizontalCenter
                anchors.right: parent.right
            }
        }

        Rectangle{
            Layout.fillHeight: true
            Layout.fillWidth: true
            Button{
                property bool isPressed: false
                id:leftBtn
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                anchors.right: parent.horizontalCenter
                anchors.rightMargin: 5
                height: parent.height/2
                Image {
                    anchors.fill: parent
                    id: firstExtraPiс
                }
                onClicked: {
                    mainBtn.background.color = "green"
                    rightBtn.isPressed = false
                    leftBtn.isPressed = true
                }
            }
            Button{
                property bool isPressed: false
                id:rightBtn
                anchors.left: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                anchors.leftMargin: 5
                height: parent.height/2
                Image {
                    anchors.fill: parent
                    id: secondExtraPic
                }
                onClicked: {
                    mainBtn.background.color = "red"
                    rightBtn.isPressed = true
                    leftBtn.isPressed = false
                }
            }
        }

        Button{
            id:mainBtn
            Layout.fillWidth: true
            text: "Finish"
            property int motiveFirst: -1
            property int motiveSecond: -1
            onClicked: {
                if(leftBtn.isPressed ==true){
                    res.addScore(motiveFirst)
                }
                if(rightBtn.isPressed ==true){
                    res.addScore(motiveSecond)
                }
            }
        }
    }
    ColumnLayout{
        id:ninethLayout
        visible: false
        Text {
            id: textResult
            font.pointSize: 15
            Connections{
                target:res
                onMotiveResultSignal:{
                    console.log(val)
                    textResult.text = "Your reason for learning is: " +val
                    mainLayout.currentIndex = 8
                }

            }
        }
    }
}
