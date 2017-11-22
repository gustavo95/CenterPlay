#include "videolauncher.h"
#include <iostream>
#include <string>
#include <QDebug>

using namespace std;
VideoLauncher::VideoLauncher(QObject *parent):
    QObject(parent),
    m_process(new QProcess(this))
{
}

void VideoLauncher::launchVideo(QString folder)
{
    //qDebug(folder);
    folder.remove("file://");
    qDebug() << folder;

    m_process->start("omxplayer --display=5 --layer 2 -o hdmi "+folder);


}
