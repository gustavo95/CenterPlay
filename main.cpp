#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "scriptlauncher.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    
    QQmlApplicationEngine engine;
    //engine.rootContext()->setContextProperty("applicationDirPath", "file:/home/edge/Documentos/Center_Play/CenterPlay/"); //pc
    //engine.rootContext()->setContextProperty("applicationDirPath", "/home/edge/yocto/rpi/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/centerplay/1.0-r0/git/"); //yocto
    engine.rootContext()->setContextProperty("applicationDirPath", "file:");
    engine.rootContext()->setContextProperty("resWidth", 640);
    engine.rootContext()->setContextProperty("resHeight", 480);
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    ScriptLauncher launcher;
    QQmlContext *context = engine.rootContext();
    context->setContextProperty("scriptLauncher", &launcher);
    
    return app.exec();
}
