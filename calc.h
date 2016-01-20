#ifndef CALC
#define CALC

/**
 * @brief equivalent_air_depth
 *  Calculates the equivalent depth for a planned
 *  nitrox dive.
 *
 * The parameters are the used gas and the planned
 * depth. It returns the equivalent depth on air.
 *
 * @param ean, in %
 *  For example 21 is normal air, and 100 is pure O₂
 * @param depth
 *  Expressed in meters
 * @return
 *  The equivalent depth on an air dive, in meters
 */
static double equivalent_air_depth(double ean,double depth) {
    //Amount of nitrogen in the mix. [0, 1]
    double n = 1-(ean/100);
    return ((n*(depth+10)) / 0.79) -10;
}

/**
 * @brief maximum_operative_depth
 *  Returns the maximum possible depth reacheable
 *  using a certain mix
 * @param ean, in %
 *  For example 21 is normal air, and 100 is pure O₂
 * @return
 *  expressed in meters
 */
double maximum_operative_depth(double ean);

/**
 * @brief best_operative_depth
 *  same as maximum_operative_depth but returns the
 *  depth that is best for the gas mix
 * @param ean
 * @param factors
 *  Adding factors to the count increases the safety
 *  margin by 0.1 atm
 * @return
 */
double best_operative_depth(double ean, unsigned int factors = 0);

#endif // CALC

