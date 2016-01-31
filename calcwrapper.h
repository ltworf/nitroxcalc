#ifndef CALCWRAPPER_H
#define CALCWRAPPER_H

#include <QObject>

class CalcWrapper : public QObject
 {
     Q_OBJECT
 public:
     Q_INVOKABLE int mod(int ean);
     Q_INVOKABLE int bod(int ean);

 public slots:
     //void refresh() {
     //}
 };

#endif // CALCWRAPPER_H
