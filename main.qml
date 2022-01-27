import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQml 2.12
import QtMultimedia 5.12
import my.test 1.0


Window {
    id:mainWindow
    width: 750
    height: 550
    visible: true
    title: qsTr("Hello World")
    property var motiveData: ({[Test.External_motive]:[
        "Мальчики (девочки) разговаривали о школе. Первый мальчик сказал:
«Я хожу в школу потому, что меня мама заставляет.Если бы не мама,
я бы в школу не ходил»."
        ,"qrc:/new/motivTest2/pics/motivationTest/1stPic.png"],[Test.Educational_motive]:
                              ["Второй мальчик (девочка) сказал: «Я хожу в школу потому,
что мне нравится уроки делать. Даже если бы школы не было,
я все равно бы учился».","qrc:/new/motivTest2/pics/motivationTest/2ndpic.png"],
                              [Test.Game_motive]:["Третий мальчик сказал:
«Я хожу в школу потому, что там весело и много ребят,
с которыми можно поиграть».",
                                  "qrc:/new/motivTest2/pics/motivationTest/3rdPic.png"],
                              [Test.Positional_motive]:["Четвертый мальчик сказал:
«Я хожу в школу потому, что хочу быть большим.
Когда я в школе, я чувствую себя взрослым, а до школы я был маленьким».",
                          "qrc:/new/motivTest2/pics/motivationTest/4thPic.png"],
                                  [Test.Social_motive]:["Пятый мальчик (девочка) сказал:
«Я хожу в школу потому, что нужно учиться. Без учения
никакого дела не сделаешь, а выучишься — и можешь стать кем захочешь».",
                          "qrc:/new/motivTest2/pics/motivationTest/5sPic.png"],
                              [Test.Score_motive]:["Шестой мальчик сказал:
«Я хожу в школу потому, что получаю там пятерки».",
"qrc:/new/motivTest2/pics/motivationTest/6sPic.png"]})
    ChooseTestMenu{
        width: parent.width
        height: parent.height
    }
}
