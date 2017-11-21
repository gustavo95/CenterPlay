#include "videolauncher.h"
#include <iostream>
#include <string>
using namespace std;
VideoLauncher::VideoLauncher(QObject *parent):
    QObject(parent),
    m_process(new QProcess(this))
{
}

void VideoLauncher::launchVideo(QString folder)
{
    //qDebug(folder);
    m_process->start("omxplayer --display=5 -o hdmi "+folder);

}
