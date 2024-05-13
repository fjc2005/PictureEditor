#pragma execution_character_set("utf-8")
#define NOMINMAX
#undef min
#undef max

#include "unistd.h"
#include <io.h>
#include <process.h>
#include <windows.h>
#include "mainwindow.h"
#include <QApplication>
#include <QSplashScreen>
#include <QLabel>
#include <QMovie>
#include <time.h>
#include <QTranslator>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    QTranslator translator;
    translator.load(NULL);
    a.installTranslator(&translator);
    QPixmap pixmap(":/myImage/images/loading.gif");
        QSplashScreen splash(pixmap);
        QLabel label(&splash);
        QMovie mv(":/myImage/images/loading.gif");
        label.setMovie(&mv);
        mv.start();
        splash.show();
        splash.setCursor(Qt::BlankCursor);
        for(int i=0; i<1250; i+=mv.speed())
        {
            QCoreApplication::processEvents();
            Sleep(50);
        }
        MainWindow w;
        w.setWindowTitle(QObject::tr("图像视频处理工具"));
        w.show();
        splash.finish(&w);
    return a.exec();
}
