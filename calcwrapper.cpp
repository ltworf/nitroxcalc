#include "calcwrapper.h"

#include "calc.h"

int CalcWrapper::mod(int ean) {
    return maximum_operative_depth(ean);
}

int CalcWrapper::bod(int ean) {
    return best_operative_depth(ean, 2);
}
