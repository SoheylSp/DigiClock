#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "cornometer.h"
#include "worldclockbackend.h"
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    WorldClockBackend *wcb = new WorldClockBackend() ;
    engine.rootContext()->setContextProperty("WorldClockBackend",wcb);

    qmlRegisterType<Cornometer>("com.cornometer",1,0,"Cornometer");
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
