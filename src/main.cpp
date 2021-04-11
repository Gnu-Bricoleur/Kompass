#include <QApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include <QUrl>
#include <QDebug>
#include <QTimer>
#include <iostream>
#include <fstream>
#include <string>
#include <stdlib.h>
using namespace std;
#include <stdio.h>

QObject *qmlx;
QObject *qmly;
QObject *qmlz;
QObject *qmlvec;

void updateCompass(){
FILE *xraw, *yraw, *zraw;
int n, ax, ay, az;
xraw = fopen("/sys/bus/iio/devices/iio\:device2/in_magn_x_raw", "r");
yraw = fopen("/sys/bus/iio/devices/iio\:device2/in_magn_y_raw", "r");
zraw = fopen("/sys/bus/iio/devices/iio\:device2/in_magn_z_raw", "r");
fscanf(xraw, "%d", &ax);
fscanf(yraw, "%d", &ay);
fscanf(zraw, "%d", &az);
fclose(xraw);
fclose(yraw);
fclose(zraw);
QVariant varx = ax;
QVariant vary = ay;
QVariant varz = az;

qmlx->setProperty("text", varx);
qmly->setProperty("text", vary);
qmlz->setProperty("text", varz);
}


Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);
    QCoreApplication::setOrganizationName("KDE");
    QCoreApplication::setOrganizationDomain("kde.org");
    QCoreApplication::setApplicationName("HelloKirigami");

    QQmlApplicationEngine engine;

    engine.load(QUrl(QStringLiteral("qrc:///main.qml")));

    qDebug() << "Jusqu'ici tout va bien";
    
    QObject *rootObject = engine.rootObjects().first();
    qDebug() << "Jusqu'ici tout va bien";
    qmlx = rootObject->findChild<QObject*>("x");
    qmly = rootObject->findChild<QObject*>("y");
    qmlz = rootObject->findChild<QObject*>("z");
    qDebug() << "Jusqu'ici tout va bien";
    //qDebug() << qmlObject->property("text");

    //rootObject->setProperty("text", "bla");
    //qmlObject->setProperty("text", "Change you text here...");
    qDebug() << "Jusqu'ici tout va bien";


    QTimer timer;
    QObject::connect(&timer, &QTimer::timeout, updateCompass);
    timer.start(50);



    if (engine.rootObjects().isEmpty()) {
        return -1;
    }
    int ret = app.exec();
    return ret;
}