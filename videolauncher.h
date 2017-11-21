#ifndef VIDEOLAUNCHER_H
#define VIDEOLAUNCHER_H

#include <QObject>
#include <QProcess>
#include <QString>
class VideoLauncher : public QObject
{

    Q_OBJECT

public:
    explicit VideoLauncher(QObject *parent = 0);
    Q_INVOKABLE void launchVideo(QString folder);

private:
    QProcess *m_process;

};

#endif // VIDEOLAUNCHER_H
