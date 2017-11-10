#include "tetrixlauncher.h"

TetrixLauncher::TetrixLauncher(QObject *parent) :
    QObject(parent),
    m_process(new QProcess(this))
{
}

void TetrixLauncher::launchTetrix()
{
    m_process->start("tetrix");
}
