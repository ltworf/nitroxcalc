#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <qqmlcontext.h>

#include "calcwrapper.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    CalcWrapper calc;
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("calc", &calc);
    engine.load(QUrl(QStringLiteral("qrc:/ui/main.qml")));
    return app.exec();
}
