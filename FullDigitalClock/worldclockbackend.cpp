#include "worldclockbackend.h"

WorldClockBackend::WorldClockBackend(QObject *parent) : QObject(parent) , m_second(55),
    m_minute(59) ,
    m_hour(23) ,
    m_timer(new QTimer(this))
{

  connect(m_timer,&QTimer::timeout,this,&WorldClockBackend::updateSlot);
    m_timer->start(1000);

}

int WorldClockBackend::second() const
{
    return m_second;
}

int WorldClockBackend::minute() const
{
    return m_minute;
}

int WorldClockBackend::hour() const
{
    return m_hour;
}

void WorldClockBackend::setSecond(int second)
{
    if (m_second == second)
        return;

    m_second = second;
    emit secondChanged(m_second);
}

void WorldClockBackend::setMinute(int minute)
{
    if (m_minute == minute)
        return;

    m_minute = minute;
    emit minuteChanged(m_minute);
}

void WorldClockBackend::setHour(int hour)
{
    if (m_hour == hour)
        return;

    m_hour = hour;
    emit hourChanged(m_hour);
}

void WorldClockBackend::updateSlot()
{

 int mySec = m_second +1;
 int myMin = m_minute +1 ;
 int myHour= m_hour +1 ;

    setSecond(mySec);
    emit secondChanged(mySec);
    if(m_second==60){

        setSecond(0);
        setMinute(myMin);
        emit minuteChanged(myMin) ;
        if(m_minute == 60){
            setMinute(0);
            setHour(myHour) ;
            emit hourChanged(myHour) ;

            if(m_hour == 24){

                setHour(0);

            }

        }
    }
}



