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
int equivalent_air_depth(int ean,double depth);

/**
 * @brief maximum_operative_depth
 *  Returns the maximum possible depth reacheable
 *  using a certain mix
 * @param ean, in %
 *  For example 21 is normal air, and 100 is pure O₂
 * @return
 *  expressed in meters
 */
int maximum_operative_depth(int ean);

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
int best_operative_depth(int ean, unsigned int factors = 0);

#endif // CALC

