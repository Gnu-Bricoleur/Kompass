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

/*    struct iio_context* ctx;
    ctx = iio_create_local_context();
    if (!ctx) return 1;    
    iio_device* dev = get_lis3mdl(ctx);//iio_context_get_device(ctx, "lis3mdl");
    if(nullptr == dev)
    {
        return 7;
    }
    std::cout << "device : " << dev << endl;

    // Enable all channels
    unsigned int num_channels = iio_device_get_channels_count(dev);
    for (unsigned int i = 0; i < num_channels; i++)
    {
        iio_channel* chn = iio_device_get_channel(dev, i);
        iio_channel_enable(chn);

        std::string chn_name;
        {
            const char *name = iio_channel_get_name(chn);
            if (name!=NULL)
                chn_name = name;
            else
                chn_name = iio_channel_get_id(chn);
        }
        bool is_output = iio_channel_is_output(chn);
        std::cout << " enabled ch" << i << " : " << chn_name << (is_output ? "(output)":"(input)") << endl;
double val;
        iio_channel_attr_read_double(chn, 0, &val);
        qDebug() << val;


    }

    size_t samples_count=1024*num_channels;
*/
    //iio_buffer *buffer;
    //buffer = iio_device_create_buffer(dev, samples_count, true);
/*
   if (!buffer)
    {
        std::cout << "Unable to allocate buffer"<<endl;
        return 7;
    }
*/
    //while (true)
    //{
//	double val;
//	iio_channel_attr_read_double(chn, 0, &val);
//	std::cout << val << endl;
        //int ret = iio_buffer_refill(buffer);
        //if (ret < 0) {
        //    std::cout << "Unable to refill buffer" << endl;
        //    break;
        //}

        //iio_buffer_foreach_sample(buffer, print_sample, NULL);
        //fflush(stdout);
    //}
    double value;
    struct iio_context *ctx = iio_create_default_context();
    struct iio_device *dev = iio_context_find_device(ctx, "lis3mdl");
    struct iio_channel *ch = iio_device_find_channel(dev, "magn_x", false);
while(true){    
int ret = iio_channel_attr_read_double(ch, "raw", &value);
    if (ret < 0)
        printf("Unable to read RSSI: %i\n", ret);
    else
        printf("RSSI: %f\n", value);

    //iio_context_destroy(ctx);
    }
   // QTimer timer;
   // QObject::connect(&timer, &QTimer::timeout, updateCompass);
   // timer.start(50);

    if (engine.rootObjects().isEmpty()) {
        return -1;
    }
    int ret = app.exec();
    return ret;
}
