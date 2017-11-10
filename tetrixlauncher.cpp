#include "tetrixlauncher.h"

TetrixLauncher::TetrixLauncher(QObject *parent) :
    QObject(parent)
{
}

void TetrixLauncher::launchTetrix()
{
    QProcess *p= new QProcess(this);
    p->start("C:\\Qt\\Examples\\Qt-5.9.1\\widgets\\widgets\\build-tetrix-Desktop_Qt_5_9_1_MinGW_32bit-Debug\\debug\\terix.exe",QIODevice::ReadWrite);
}
