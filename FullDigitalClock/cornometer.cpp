#include "cornometer.h"

Cornometer::Cornometer(QObject *parent) : QObject(parent) , m_counter(0),
    m_timer(new QTimer(this))
{

    connect(m_timer,&QTimer::timeout,this,&Cornometer::updateSlot) ;
    //m_timer->start(1000) ;

}

int Cornometer::counter() const
{
    return m_counter;
}

void Cornometer::setCounter(int counter)
{
    if (m_counter == counter)
        return;

    m_counter = counter;
    emit counterChanged(m_counter);
}

void Cornometer::updateSlot()
{
    m_counter++ ;
    emit counterChanged(m_counter) ;
}

void Cornometer::start()
{
    m_timer->start(1000);
}

void Cornometer::stop()
{
    m_timer->stop() ;
}

void Cornometer::reset()
{
m_counter = 0 ;
m_timer->stop();
emit counterChanged(m_counter) ;
}
