#ifndef CALCWRAPPER_H
#define CALCWRAPPER_H

#include <QObject>
#include <QString>

class CalcWrapper : public QObject
{
    Q_OBJECT
public:
    Q_INVOKABLE QString mod(int ean);
    Q_INVOKABLE QString bod(int ean);
    Q_INVOKABLE QString ead(int ean, int depth);

public slots:
    //void refresh() {
    //}
};

#endif // CALCWRAPPER_H
