#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include<test.h>
#include <QQmlContext>
#include "test.h"

static const QString path="C:/he8v3/phonec.db";

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    Test db(path);
    if(db.isOpen())
    {
        db.createTable();
        db.printAllPersons1();
        db.datat();
    }

    QQmlApplicationEngine engine;

    //Add to the root context
    Test test;
    engine.rootContext()->setContextProperty("testing", &test);

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
