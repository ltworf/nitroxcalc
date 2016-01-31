#include "calcwrapper.h"

#include "calc.h"

QString CalcWrapper::mod(int ean) {
    if (ean < 21 || ean > 40) {
        return QString(" --- ");
    }
    return QString::number(maximum_operative_depth(ean));
}

QString CalcWrapper::bod(int ean) {
    if (ean < 21 || ean > 40) {
        return QString(" --- ");
    }
    return QString::number(best_operative_depth(ean, 1));
}
