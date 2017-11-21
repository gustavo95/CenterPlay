#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QtCore/QUrl>
#include <QtWebView/QtWebView>
#include <qtwebengineglobal.h>
#include <QWebEngineCookieStore>

#include "scriptlauncher.h"
#include "tetrixlauncher.h"
#include "videolauncher.h"

int main(int argc, char *argv[])
{
    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    QtWebEngine::initialize();
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("resWidth", 640);
    engine.rootContext()->setContextProperty("resHeight", 480);
    engine.rootContext()->setContextProperty("fontSize", 11);
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    ScriptLauncher slauncher;
    TetrixLauncher tlauncher;
    VideoLauncher vlauncher;
    QQmlContext *context = engine.rootContext();
    context->setContextProperty("scriptLauncher", &slauncher);
    context->setContextProperty("tetrixLauncher", &tlauncher);
    context->setContextProperty("videoLauncher", &vlauncher);
    
    return app.exec();
}
