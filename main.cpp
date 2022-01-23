#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "showresult.h"


int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);
    showResult res;

    qmlRegisterUncreatableMetaObject(
      Test::staticMetaObject, // meta object created by Q_NAMESPACE macro
      "my.test",                // import statement (can be any string)
      1, 0,                          // major and minor version of the import
      "Test",                 // name in QML (does not have to match C++ name)
      "Error: only enums"            // error in case someone tries to create a MyNamespace object
    );

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    engine.rootContext()->setContextProperty("res", &res);

    engine.load(url);

    return app.exec();
}
