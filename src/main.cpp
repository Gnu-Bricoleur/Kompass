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

static struct iio_context *ctx   = NULL;

#define IIO_ENSURE(expr) { \
	if (!(expr)) { \
		(void) fprintf(stderr, "assertion failed (%s:%d)\n", __FILE__, __LINE__); \
		(void) abort(); \
	} \
}


/* returns LIS3MDL phy device */
static struct iio_device* get_lis3mdl(struct iio_context *ctx)
{
	struct iio_device *dev =  iio_context_find_device(ctx, "lis3mdl");
	IIO_ENSURE(dev && "No lis3mdl found");
	return dev;
}
QObject *qmlx;
QObject *qmly;
QObject *qmlz;
QObject *qmlvec;

void updateCompass(){
	FILE *xraw, *yraw, *zraw;
	int n, ax, ay, az;
	/*xraw = fopen("/sys/bus/iio/devices/iio\:device2/in_magn_x_raw", "r");
	yraw = fopen("/sys/bus/iio/devices/iio\:device2/in_magn_y_raw", "r");
	zraw = fopen("/sys/bus/iio/devices/iio\:device2/in_magn_z_raw", "r");
	fscanf(xraw, "%d", &ax);
	fscanf(yraw, "%d", &ay);
	fscanf(zraw, "%d", &az);
	fclose(xraw);
	fclose(yraw);
	fclose(zraw);*/
	ax = 0;
	ay = 0;
	az = 0;
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
    QCoreApplication::setApplicationName("Kompass");

    QQmlApplicationEngine engine;

    engine.load(QUrl(QStringLiteral("qrc:///main.qml")));

    qDebug() << "Jusqu'ici tout va bien";
    
    QObject *rootObject = engine.rootObjects().first();
    qDebug() << "Jusqu'ici tout va bien";
    qmlx = rootObject->findChild<QObject*>("x");
    qmly = rootObject->findChild<QObject*>("y");
    qmlz = rootObject->findChild<QObject*>("z");
    qDebug() << "Jusqu'ici tout va bien";



//    printf("* Acquiring IIO context the fuck\n");
qDebug() << "Jusqu'ici tout va bien print";
    IIO_ENSURE((ctx = iio_create_default_context()) && "No context");
qDebug() << "Jusqu'ici tout va bien acquireing default contect";
    IIO_ENSURE(iio_context_get_devices_count(ctx) > 0 && "No devices");
qDebug() << "Jusqu'ici tout va bien get device count";





//struct iio_context *context = iio_create_local_context();
struct iio_device *device = get_lis3mdl(ctx); //iio_context_get_device(context, 1);
struct iio_channel *chan = iio_device_get_channel(device, 0);
iio_channel_enable(chan);
if (iio_channel_is_scan_element(chan) == true) {printf("OK\n");}

struct iio_buffer *buff = iio_device_create_buffer(device, 0, true);
/*if (buff == NULL)
{
  printf("Error: %s\n", strerror(errno));
  return (1);
}*/
qDebug() << "Jusqu'ici tout va bien get read buffer now !!t";
/*
p_inc = iio_buffer_step(buff);
p_end = iio_buffer_end(buff);
for (p_dat = (char *)iio_buffer_first(buff, rx0_i); p_dat < p_end; p_dat += p_inc) {
			const int16_t i = ((int16_t*)p_dat)[0]; // Real (I)
			const int16_t q = ((int16_t*)p_dat)[1]; // Imag (Q)
			((int16_t*)p_dat)[0] = q;
			((int16_t*)p_dat)[1] = i;
		}

*/
while(true){
//for (void *ptr = iio_buffer_first(buff, chan); ptr < iio_buffer_end(buff); ptr += iio_buffer_step(buff)) {
  printf("%ld", iio_buffer_refill(buff));
//   printf("Value:  %d\n", ((int16_t*)ptr));
//}
}

    QTimer timer;
    QObject::connect(&timer, &QTimer::timeout, updateCompass);
    timer.start(50);

    if (engine.rootObjects().isEmpty()) {
        return -1;
    }
    int ret = app.exec();
    return ret;
}
