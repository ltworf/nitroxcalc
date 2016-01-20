#include "calc.h"

#define MAX_PO2 1.6 //atm

double maximum_operative_depth(double ean) {
    double o2 = ean / 100;
    return MAX_PO2 / o2;
}

double best_operative_depth(double ean, unsigned int factors) {
    double o2 = ean/100;
    double margin = (factors+1) / 10;
    return (MAX_PO2 - margin) / o2;
}
