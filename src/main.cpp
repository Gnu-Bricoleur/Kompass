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
#include <stdio.h>
#include <iio.h>
#include <math.h>

struct iio_channel *chx;
struct iio_channel *chy;
struct iio_channel *chz;

QObject *qmlx;
QObject *qmly;
QObject *qmlz;
QObject *qmlvec;
QObject *kompass_hand;
double minx, maxx, miny, maxy;

void updateCompass(){
	double ax, ay, az;
	int angle = 0;
	iio_channel_attr_read_double(chx, "raw", &ax);
	iio_channel_attr_read_double(chy, "raw", &ay);
	iio_channel_attr_read_double(chz, "raw", &az);
    if (ax<minx){minx = ax;}
    if (ax>maxx){maxx = ax;}
    if (ay<miny){miny = ay;}
    if (ay>maxy){maxy = ay;}
	ax = (ax-minx)/(maxx-minx)*100;
	ay = (ay-miny)/(maxy-miny)*100;
	QVariant varx = ax;
	QVariant vary = ay;
	QVariant varz = az;
	qDebug() << ax << ", " << ay << ", " << az;
	//qmlx->setProperty("text", varx);
	//qmly->setProperty("text", vary);
	//qmlz->setProperty("text", varz);
    angle = int(atan2(int(ax), int(ay))*(180/3.14));
	while(angle>360){
		angle -= 360;
	}
	while (angle < 0){
		angle += 360;
	}
	qDebug() << angle;
	kompass_hand->setProperty("rotation", angle);
}


Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);
    QCoreApplication::setOrganizationName("KDE");
    QCoreApplication::setOrganizationDomain("kde.org");
    QCoreApplication::setApplicationName("Kompass");

    QQmlApplicationEngine engine;

    engine.load(QUrl(QStringLiteral("qrc:///KompassPage.qml")));

    qDebug() << "Jusqu'ici tout va bien";
    
    QObject *rootObject = engine.rootObjects().first();
    qDebug() << "Jusqu'ici tout va bien";
    qmlx = rootObject->findChild<QObject*>("x");
    qmly = rootObject->findChild<QObject*>("y");
    qmlz = rootObject->findChild<QObject*>("z");
    kompass_hand = rootObject->findChild<QObject*>("kompass_hand");
    qDebug() << "Jusqu'ici tout va bien";

    struct iio_context *ctx = iio_create_default_context();
    struct iio_device *dev = iio_context_find_device(ctx, "lis3mdl");

    chx = iio_device_find_channel(dev, "magn_x", false);
    chy = iio_device_find_channel(dev, "magn_y", false);
    chz = iio_device_find_channel(dev, "magn_z", false);

    iio_channel_attr_read_double(chx, "raw", &minx);
	iio_channel_attr_read_double(chy, "raw", &miny);
    iio_channel_attr_read_double(chx, "raw", &maxx);
	iio_channel_attr_read_double(chy, "raw", &maxy);
    //struct iio_context *confctx = iio_create_context_from_uri("ip:localhost");
    //struct iio_device *confdev = iio_context_find_device(confctx, "lis3mdl");
    //int reto = iio_device_attr_write_double(confdev, "sampling_frequency", 1);
    //qDebug() << reto << "succes ?";
    QTimer timer;
    QObject::connect(&timer, &QTimer::timeout, updateCompass);
    timer.start(50);

    if (engine.rootObjects().isEmpty()) {
        return -1;
    }
    int ret = app.exec();
    return ret;
}
