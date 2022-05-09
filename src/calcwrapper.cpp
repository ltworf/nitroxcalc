#include "calcwrapper.h"

#include "calc.h"

QString CalcWrapper::mod(int ean) {
    if (ean < 21 || ean > 40) {
        return QString(" --- ");
    }
    return QString::number(maximum_operative_depth(ean)) + QString('m');
}

QString CalcWrapper::bod(int ean) {
    if (ean < 21 || ean > 40) {
        return QString(" --- ");
    }
    return QString::number(best_operative_depth(ean, 1)) + QString('m');
}

QString CalcWrapper::ead(int ean, int depth) {
    if (ean < 21 || ean > 40 || depth < 5) {
        return QString(" --- ");
    }

    int d = equivalent_air_depth(ean, depth);
    if (depth >= maximum_operative_depth(ean)) {
        return QString("Too deep!");
    }

    return QString::number(d) + QString('m');
}
