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
    property var motiveData: ({[Test.External_motive]:[
        "Мальчики (девочки) разговаривали о школе. Первый мальчик сказал:
«Я хожу в школу потому, что меня мама заставляет.Если бы не мама,
я бы в школу не ходил»."
        ,"qrc:/new/motivTest2/pics/motivationTest/1stPic.png"],[Test.Educational_motive]:
                              ["Второй мальчик (девочка) сказал: «Я хожу в школу потому,
 что мне нравится уроки делать. Даже если бы школы не было,
 я все равно бы учился».","qrc:/new/motivTest2/pics/motivationTest/2ndpic.png"],
                              [Test.Game_motive]:["Третий мальчик сказал:
«Я хожу в школу потому, что там весело и много ребят, с которыми можно поиграть».",
                                  "qrc:/new/motivTest2/pics/motivationTest/3rdPic.png"],
                              [Test.Positional_motive]:["Четвертый мальчик сказал:
«Я хожу в школу потому, что хочу быть большим.
Когда я в школе, я чувствую себя взрослым, а до школы я был маленьким».",
                          "qrc:/new/motivTest2/pics/motivationTest/4thPic.png"],
                                  [Test.Social_motive]:["Пятый мальчик (девочка) сказал:
«Я хожу в школу потому, что нужно учиться. Без учения никакого дела не сделаешь,
а выучишься — и можешь стать кем захочешь».",
                          "qrc:/new/motivTest2/pics/motivationTest/5sPic.png"],
                              [Test.Score_motive]:["Шестой мальчик сказал:
«Я хожу в школу потому, что получаю там пятерки».",
"qrc:/new/motivTest2/pics/motivationTest/6sPic.png"]})

ColumnLayout{
        id:firstLayout
        spacing: 5
        visible: true
        Text{
            Layout.alignment: Qt.AlignTop|Qt.AlignCenter
            text:"Мальчики (девочки) разговаривали о школе.
Первый мальчик сказал: «Я хожу в школу потому,
что меня мама заставляет.
Если бы не мама, я бы в школу не ходил»."
            font.pointSize: 15
        }
        Rectangle{
            Layout.alignment: Qt.AlignBottom
            Layout.fillHeight: true
            Layout.fillWidth: true
            visible: true
            Image {
                id: firstPic
                source: "qrc:/new/motivTest2/pics/motivationTest/1stPic.png"
                anchors.fill: parent
            }
        }
        Button{
            Layout.fillWidth: true
            text: "NEXT"
            onClicked: {
                mainLayout.currentIndex = 1
            }
        }
    }
    ColumnLayout{
        id:secondLayout
        spacing: 5
        visible: false
        Text{
            Layout.alignment: Qt.AlignTop|Qt.AlignCenter
            text:"Второй мальчик (девочка) сказал:
«Я хожу в школу потому, что мне нравится уроки делать.
Даже если бы школы не было, я все равно бы учился»."
            font.pointSize: 15
        }
        Rectangle{
            Layout.alignment: Qt.AlignBottom
            Layout.fillHeight: true
            Layout.fillWidth: true
            Image {
                id: secondPic
                source: "qrc:/new/motivTest2/pics/motivationTest/2ndpic.png"
                anchors.fill: parent
            }
        }
        Button{
            Layout.fillWidth: true
            text: "NEXT"
            onClicked: {
                mainLayout.currentIndex = 2
            }
        }
    }
    ColumnLayout{
        id:thirdLayout
        spacing: 5
        visible: false
        Text{
            Layout.alignment: Qt.AlignTop|Qt.AlignCenter
            text:"Третий мальчик сказал:
«Я хожу в школу потому, что там весело
и много ребят, с которыми можно поиграть»."
            font.pointSize: 15
        }
        Rectangle{
            Layout.alignment: Qt.AlignBottom
            Layout.fillHeight: true
            Layout.fillWidth: true
            Image {
                id: thirdPic
                source: "qrc:/new/motivTest2/pics/motivationTest/3rdPic.png"
                anchors.fill: parent
            }
        }
        Button{
            Layout.fillWidth: true
            text: "NEXT"
            onClicked: {
                mainLayout.currentIndex = 3
            }
        }
    }
    ColumnLayout{
        id:fourthLayout
        spacing: 5
        visible: false
        Text{
            Layout.alignment: Qt.AlignTop|Qt.AlignCenter
            text:"Четвертый мальчик сказал:
«Я хожу в школу потому, что хочу быть большим.
 Когда я в школе, я чувствую себя взрослым,
 а до школы я был маленьким»."
            font.pointSize: 15
        }
        Rectangle{
            Layout.alignment: Qt.AlignBottom
            Layout.fillHeight: true
            Layout.fillWidth: true
            Image {
                id: fourthPic
                source: "qrc:/new/motivTest2/pics/motivationTest/4thPic.png"
                anchors.fill: parent
            }
        }
        Button{
            Layout.fillWidth: true
            text: "NEXT"
            onClicked: {
                mainLayout.currentIndex = 4
            }
        }
    }
    ColumnLayout{
        id:fifthLayout
        spacing: 5
        visible: false
        Text{
            Layout.alignment: Qt.AlignTop|Qt.AlignCenter
            text:"Пятый мальчик (девочка) сказал:
«Я хожу в школу потому, что нужно учиться.
Без учения никакого дела не сделаешь,
а выучишься — и можешь стать кем захочешь»"
            font.pointSize: 15
        }
        Rectangle{
            Layout.alignment: Qt.AlignBottom
            Layout.fillHeight: true
            Layout.fillWidth: true
            Image {
                id: fifthPic
                source: "qrc:/new/motivTest2/pics/motivationTest/5sPic.png"
                anchors.fill: parent
            }
        }
        Button{
            Layout.fillWidth: true
            text: "NEXT"
            onClicked: {
                mainLayout.currentIndex = 5
            }
        }
    }
    ColumnLayout{
        id:sixthLayout
        spacing: 5
        visible: false
        Text{
            Layout.alignment: Qt.AlignTop|Qt.AlignCenter
            text:"Шестой мальчик сказал:
«Я хожу в школу потому, что получаю там пятерки»."
            font.pointSize: 15
        }
        Rectangle{
            Layout.alignment: Qt.AlignBottom
            Layout.fillHeight: true
            Layout.fillWidth: true
            Image {
                id: sixthPic
                source: "qrc:/new/motivTest2/pics/motivationTest/6sPic.png"
                anchors.fill: parent
            }
        }
        Button{
            Layout.fillWidth: true
            text: "NEXT"
            onClicked: {
                mainLayout.currentIndex = 6
            }
        }
    }
    Item{
        id:seventhLayout
        //spacing: 5
        visible: false
        Timer{
            id:timer
            interval: 2000; running: false; repeat: false
            onTriggered:{
                mainLayout.currentIndex = 6
            }
        }
        Button{
            id:firstBackBtn
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.margins: 5
            width: mainLayout.width/5
            height: mainLayout.height/8
            Image {
                id:littleFirstPic
                anchors.fill: parent
                source: "qrc:/new/motivTest2/pics/motivationTest/1stPic.png"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    mainLayout.currentIndex=0
                    timer.start()
                }
            }
        }
        Button{
            id:secondBackBtn
            anchors.left: firstBackBtn.left
            anchors.top: firstBackBtn.bottom
            anchors.topMargin: 20
            width: mainLayout.width/5
            height: mainLayout.height/8
            Image {
                id:littleSecondPic
                anchors.fill: parent
                source: "qrc:/new/motivTest2/pics/motivationTest/2ndpic.png"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    mainLayout.currentIndex=1
                    timer.start()
                }
            }
        }
        Button{
            id:thirdBackBtn
            anchors.left: secondBackBtn.left
            anchors.top: secondBackBtn.bottom
            anchors.topMargin: 20
            width: mainLayout.width/5
            height: mainLayout.height/8
            Image {
                id:littleThirdPic
                anchors.fill: parent
                source: "qrc:/new/motivTest2/pics/motivationTest/3rdPic.png"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    mainLayout.currentIndex=2
                    timer.start()
                }
            }
        }
        Button{
            id:fourthBackBtn
            anchors.left: fifthBackBtn.left
            anchors.bottom: fifthBackBtn.top
            anchors.bottomMargin: 20
            width: mainLayout.width/5
            height: mainLayout.height/8
            Image {
                id:littleFourthPic
                anchors.fill: parent
                source: "qrc:/new/motivTest2/pics/motivationTest/4thPic.png"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    mainLayout.currentIndex=3
                    timer.start()
                }
            }
        }
        Button{
            id:fifthBackBtn
            anchors.left: sixthBackBtn.left
            anchors.bottom: sixthBackBtn.top
            anchors.bottomMargin: 20
            width: mainLayout.width/5
            height: mainLayout.height/8
            Image {
                id:littleFifthPic
                anchors.fill: parent
                source: "qrc:/new/motivTest2/pics/motivationTest/5sPic.png"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    mainLayout.currentIndex=4
                    timer.start()
                }
            }
        }
        Button{
            id:sixthBackBtn
            anchors.left: firstBackBtn.left
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            width: mainLayout.width/5
            height: mainLayout.height/8
            Image {
                id:littleSixthPic
                anchors.fill: parent
                source: "qrc:/new/motivTest2/pics/motivationTest/6sPic.png"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    mainLayout.currentIndex=5
                    timer.start()
                }
            }
        }
        Text{
            id:firstQuest
            anchors.top: parent.top
            anchors.right: firstBackBtn.left
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
            CheckBox {
                property int motive: Test.External_motive
                checked: false
                text: qsTr("First")
                ButtonGroup.group: childGroup
            }
            CheckBox {
                property int motive: Test.Educational_motive
                checked: false
                text: qsTr("Second")
                ButtonGroup.group: childGroup
            }
            CheckBox {
                property int motive: Test.Game_motive
                checked: false
                text: qsTr("Third")
                ButtonGroup.group: childGroup
            }
            CheckBox {
                property int motive: Test.Positional_motive
                checked: false
                text: qsTr("Fourth")
                ButtonGroup.group: childGroup
            }
            CheckBox {
                property int motive: Test.Social_motive
                checked: false
                text: qsTr("Fifth")
                ButtonGroup.group: childGroup
            }
            CheckBox {
                property int motive: Test.Score_motive
                checked: false
                text: qsTr("Sixth")
                ButtonGroup.group: childGroup
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
            CheckBox {
                property int motive: Test.External_motive
                checked: false
                text: qsTr("First")
                ButtonGroup.group: childGroup2
            }
            CheckBox {
                property int motive: Test.Educational_motive
                checked: false
                text: qsTr("Second")
                ButtonGroup.group: childGroup2
            }
            CheckBox {
                property int motive: Test.Game_motive
                checked: false
                text: qsTr("Third")
                ButtonGroup.group: childGroup2
            }
            CheckBox {
                property int motive: Test.Positional_motive
                checked: false
                text: qsTr("Fourth")
                ButtonGroup.group: childGroup2
            }
            CheckBox {
                property int motive: Test.Social_motive
                checked: false
                text: qsTr("Fifth")
                ButtonGroup.group: childGroup2
            }
            CheckBox {
                property int motive: Test.Score_motive
                checked: false
                text: qsTr("Sixth")
                ButtonGroup.group: childGroup2
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
            CheckBox {
                property int motive: Test.External_motive
                checked: false
                text: qsTr("First")
                ButtonGroup.group: childGroup3
            }
            CheckBox {
                property int motive: Test.Educational_motive
                checked: false
                text: qsTr("Second")
                ButtonGroup.group: childGroup3
            }
            CheckBox {
                property int motive: Test.Game_motive
                checked: false
                text: qsTr("Third")
                ButtonGroup.group: childGroup3
            }
            CheckBox {
                property int motive: Test.Positional_motive
                checked: false
                text: qsTr("Fourth")
                ButtonGroup.group: childGroup3
            }
            CheckBox {
                property int motive: Test.Social_motive
                checked: false
                text: qsTr("Fifth")
                ButtonGroup.group: childGroup3
            }
            CheckBox {
                property int motive: Test.Score_motive
                checked: false
                text: qsTr("Sixth")
                ButtonGroup.group: childGroup3
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
        anchors.fill: parent
        Text {
            anchors.centerIn: parent
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
