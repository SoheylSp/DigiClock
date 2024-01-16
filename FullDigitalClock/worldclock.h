#ifndef WORLDCLOCK_H
#define WORLDCLOCK_H

#include <QObject>

class WorldClock : public QObject
{
    Q_OBJECT
public:
    explicit WorldClock(QObject *parent = nullptr);

signals:

};

#endif // WORLDCLOCK_H
