#ifndef TETRIXLAUNCHER_H
#define TETRIXLAUNCHER_H

#include <QObject>
#include <QProcess>

class TetrixLauncher : public QObject
{

    Q_OBJECT

public:
    explicit TetrixLauncher(QObject *parent = 0);
    Q_INVOKABLE void launchTetrix();

};

#endif
