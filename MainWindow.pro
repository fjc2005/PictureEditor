#-------------------------------------------------
#
# Project created by QtCreator 2020-11-09T15:29:38
#
#-------------------------------------------------

QT       += core gui


greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = picture
TEMPLATE = app



SOURCES += \
    Image.cpp \
    BaseModel.cpp \
    stdafx.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS  += \
    Image.h \
    BaseModel.h \
    stdafx.h \
    mainwindow.h \
    unistd.h
FORMS    += mainwindow.ui

INCLUDEPATH += E:\opencv4.5.5\build\include

LIBS += E:\opencv4.5.5\build\x64\vc15\lib\opencv_*d.dll
LIBS += E:\opencv4.5.5\build\x64\vc15\lib\opencv_world455d.lib
LIBS += E:\opencv4.5.5\build\x64\vc15\lib\opencv_*.dll
LIBS += E:\opencv4.5.5\build\x64\vc15\lib\opencv_world455.lib

INCLUDEPATH += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\include
INCLUDEPATH += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\include\torch
INCLUDEPATH += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\include\torch\csrc\api\include
INCLUDEPATH += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\include\torch\csrc\api\include\torch

LIBS += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\lib\asmjit.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\lib\c10.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\lib\clog.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\lib\cpuinfo.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\lib\dnnl.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\lib\fbgemm.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\lib\kineto.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\lib\libprotobuf.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\lib\libprotobuf-lite.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\lib\libprotoc.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\lib\pthreadpool.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\lib\torch.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\lib\torch_cpu.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-1.12.0.dev20220520+cpu\libtorch\lib\XNNPACK.lib


INCLUDEPATH += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\include
INCLUDEPATH += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\include\torch
INCLUDEPATH += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\include\torch\csrc\api\include
INCLUDEPATH += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\include\torch\csrc\api\include\torch

LIBS += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\lib\asmjit.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\lib\c10.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\lib\clog.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\lib\cpuinfo.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\lib\dnnl.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\lib\fbgemm.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\lib\kineto.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\lib\libprotobufd.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\lib\libprotobuf-lited.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\lib\libprotocd.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\lib\pthreadpool.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\lib\torch.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\lib\torch_cpu.lib
LIBS += E:\LibTorch\libtorch-win-shared-with-deps-debug-1.12.0.dev20220520+cpu\libtorch\lib\XNNPACK.lib
LIBS += -INCLUDE:"?ignore_this_library_placeholder@@YAHXZ"



RESOURCES += \
    myimage.qrc

RC_ICONS = picture.ico

TRANSLATIONS += en_tr.ts zh_tr.ts

DISTFILES += \
    en_tr.qm \
    zh_tr.qm \
    myico.ico \
    en_tr.ts \
    zh_tr.ts \
    LSRN.pt \
    images/fyf.png \
    images/1.png \
    images/center.png \
    images/images.png \
    images/images11.png \
    images/left.png \
    images/name1.png \
    images/right.png \
    images/signed_images.png \
    opencv_ffmpeg2410_64.dll \
    picture.ico \
    images/huawei.mp4 \
    en_tr.qm \
    zh_tr.qm \
    opencv_ffmpeg2410.dll \
    opencv_ffmpeg2410_64.dll \
    images/1.bmp \
    images/filenew.bmp \
    images/fyf.bmp \
    images/fyf1.bmp \
    images/loading.gif \
    images/111.jpg \
    images/1111.jpg \
    images/bg.jpg \
    images/bg1.jpg \
    images/bg2.jpg \
    images/bg3.jpg \
    images/1.png \
    images/1111.png \
    images/about.png \
    images/background.png \
    images/bianyuan.png \
    images/center.png \
    images/cool-background1.png \
    images/filenew.png \
    images/fileopen.png \
    images/filesave.png \
    images/filesaveas.png \
    images/find.png \
    images/fuhe.png \
    images/gamma.png \
    images/gray.png \
    images/help.png \
    images/images.png \
    images/images11.png \
    images/junzhi.png \
    images/left.png \
    images/name1.png \
    images/next.png \
    images/picture.png \
    images/prev.png \
    images/right.png \
    images/save.png \
    images/signed_images.png \
    images/start.png \
    images/stop.png \
    images/video.png \
    images/zh-en.png \
    images/zoom-in.png \
    myico.ico \
    picture.ico \
    en_tr.ts \
    zh_tr.ts

SUBDIRS += \
    MainWindow.pro
