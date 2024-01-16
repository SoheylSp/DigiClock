#ifndef WORLDCLOCKBACKEND_H
#define WORLDCLOCKBACKEND_H

#include <QObject>
#include <QTimer>
#include <QDateTime>
#include <QQmlContext>

class WorldClockBackend : public QObject
{
    Q_OBJECT

    Q_PROPERTY(int second READ second WRITE setSecond NOTIFY secondChanged)
    Q_PROPERTY(int minute READ minute WRITE setMinute NOTIFY minuteChanged)
    Q_PROPERTY(int hour READ hour WRITE setHour NOTIFY hourChanged)


public:
    explicit WorldClockBackend(QObject *parent = nullptr);

int second() const;

int minute() const;

int hour() const;

void setSecond(int second);

void setMinute(int minute);

void setHour(int hour);

public slots:

void updateSlot() ;

signals:

void secondChanged(int second);
void minuteChanged(int minute);
void hourChanged(int hour);

private:

int m_second;
int m_minute;
int m_hour;

QTimer *m_timer ;
};

#endif // WORLDCLOCKBACKEND_H
