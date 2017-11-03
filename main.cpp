#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "scriptlauncher.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("resWidth", 640);
    engine.rootContext()->setContextProperty("resHeight", 480);
    engine.rootContext()->setContextProperty("fontSize", 11);
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    ScriptLauncher launcher;
    QQmlContext *context = engine.rootContext();
    context->setContextProperty("scriptLauncher", &launcher);
    
    return app.exec();
}
