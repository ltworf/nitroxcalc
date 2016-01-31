#include <math.h>

#include "calc.h"

#define MAX_PO2 1.6 //atm

static int best_depth(int ean, double factors) {
    double o2 = (double)ean / 100;
    double margin = (factors) / 10;
    double pressure = (MAX_PO2 - margin) / o2;
    return (int)floor((pressure - 1) * 10);
}

int maximum_operative_depth(int ean) {
    return best_depth(ean, 0);
}

int best_operative_depth(int ean, unsigned int factors) {
    return best_depth(ean, factors+1);
}

int equivalent_air_depth(int ean, double depth) {
    //Amount of nitrogen in the mix. [0, 1]
    double n = 1-((double)ean/100);
    return (int)floor(((n*(depth+10)) / 0.79) - 10);
}
