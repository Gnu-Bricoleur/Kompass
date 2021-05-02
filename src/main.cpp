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
//#include <iio.h>
#include <math.h>
#include <QObject>
//struct iio_channel *chx;
//struct iio_channel *chy;
//struct iio_channel *chz;



QObject *qmlx;
QObject *qmly;
QObject *qmlz;
QObject *qmlvec;
QObject *kompass_hand;
double minx, maxx, miny, maxy;
int angle;


class ApplicationData : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int angle READ angle WRITE setAngle NOTIFY angleChanged)
    Q_PROPERTY(int xraw READ xraw WRITE setXraw NOTIFY angleChanged)
    Q_PROPERTY(int yraw READ yraw WRITE setYraw NOTIFY angleChanged)
    Q_PROPERTY(int zraw READ zraw WRITE setZraw NOTIFY angleChanged)
    public:
        void setXraw(const int &a) {m_xraw = a;}
        int xraw() const {return m_xraw;}
        void setYraw(const int &a) {m_yraw = a;}
        int yraw() const {return m_yraw;}
        void setZraw(const int &a) {m_zraw = a;}
        int zraw() const {return m_zraw;}

        void setAngle(const int &a) {
            if (a != m_angle) {
                m_angle = a;
                emit angleChanged();
            }
        }
        int angle() const {
            return m_angle;
        }
    signals:
        void angleChanged();
    private:
        int m_angle;
        int m_xraw, m_yraw, m_zraw;
};

ApplicationData data;

void updateCompass(){
	double ax, ay, az;

// 	iio_channel_attr_read_double(chx, "raw", &ax);
// 	iio_channel_attr_read_double(chy, "raw", &ay);
// 	iio_channel_attr_read_double(chz, "raw", &az);
//     if (ax<minx){minx = ax;}
//     if (ax>maxx){maxx = ax;}
//     if (ay<miny){miny = ay;}
//     if (ay>maxy){maxy = ay;}
// 	ax = (ax-minx)/(maxx-minx)*100;
// 	ay = (ay-miny)/(maxy-miny)*100;
	QVariant varx = ax;
	QVariant vary = ay;
	QVariant varz = az;
	qDebug() << ax << ", " << ay << ", " << az;
	//qmlx->setProperty("text", varx);
	//qmly->setProperty("text", vary);
	//qmlz->setProperty("text", varz);
//     angle = int(atan2(int(ax), int(ay))*(180/3.14));
// 	while(angle>360){
// 		angle -= 360;
// 	}
// 	while (angle < 0){
// 		angle += 360;
// 	}
    angle += 5;
    data.setAngle(angle);
    data.setXraw(angle);
    data.setYraw(angle);
    data.setZraw(angle);
	//kompass_hand->setProperty("rotation", angle);
}


Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);
    QCoreApplication::setOrganizationName("KDE");
    QCoreApplication::setOrganizationDomain("kde.org");
    QCoreApplication::setApplicationName("Kompass");

    QQmlApplicationEngine engine;

    engine.load(QUrl(QStringLiteral("qrc:///main.qml")));

    engine.rootContext()->setContextProperty("applicationData", &data);



    if (engine.rootObjects().isEmpty()) {
        return -1;
    }

    qDebug() << "Jusqu'ici tout va bien";
    angle = 0;
    QTimer timer;
    QObject::connect(&timer, &QTimer::timeout, updateCompass);
    timer.start(500);


    int ret = app.exec();
    return ret;
}
#include "main.moc"
