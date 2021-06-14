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

QObject *kompass_hand;
double minx, maxx, miny, maxy;

void updateCompass(){
	double ax, ay, az;
	int angle = 0;

    //Read the magnetic field strength on the 3 axis from the magnetometer
    iio_channel_attr_read_double(chx, "raw", &ax);
	iio_channel_attr_read_double(chy, "raw", &ay);
	iio_channel_attr_read_double(chz, "raw", &az);

    //If a value outside of the default range is read, then update the range to improve the scaling
	if (ax<minx){minx = ax;}
    if (ax>maxx){maxx = ax;}
    if (ay<miny){miny = ay;}
    if (ay>maxy){maxy = ay;}

    //Scale the readings on axes X and Y
	ax = ((ax-minx)/(maxx-minx)*3.14)-1.55;
	ay = ((ay-miny)/(maxy-miny)*3.14)-1.55;

    //Calculate the heading
   	angle = atan2(ay, ax)*180/3.14;
	angle = angle + 180;

    //Calculte the 360 modulo of the angle
	while(angle>360){
		angle -= 360;
	}
	while (angle < 0){
		angle += 360;
	}
	angle = 360-angle;

    //Set the compass hand angle
	kompass_hand->setProperty("rotation", angle);
}


Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);
    //QCoreApplication::setOrganizationName("KDE");
    //QCoreApplication::setOrganizationDomain("kde.org");
    QCoreApplication::setApplicationName("Kompass");

    //Load the main page
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:///KompassPage.qml")));
    
    //Find the hand object
    QObject *rootObject = engine.rootObjects().first();
    kompass_hand = rootObject->findChild<QObject*>("kompass_hand");

    //Create iio structure and contexts
    struct iio_context *ctx = iio_create_default_context();
    struct iio_device *dev = iio_context_find_device(ctx, "lis3mdl");

    //Find the 3 magnetometers channels
    chx = iio_device_find_channel(dev, "magn_x", false);
    chy = iio_device_find_channel(dev, "magn_y", false);
    chz = iio_device_find_channel(dev, "magn_z", false);

    //Start a timer to call periodically a function reading the magnetometer values
    QTimer timer;
    QObject::connect(&timer, &QTimer::timeout, updateCompass);
    timer.start(50);    //every 50ms

    //Set sane default values for the possible range of readings for scaling
    //minx = -5256;
	//maxx = 1714;
	//miny = -2358;
	//maxy = 4122;

    //Launch the application
    if (engine.rootObjects().isEmpty()) {
        return -1;
    }
    int ret = app.exec();
    return ret;
}
