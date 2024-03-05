# Model settings

## Maximum time step
initial time step Δt is the value in seconds. The input parameter is the maximum time step. The time step Δt is adjusted during the calculation according to the numerical stability condition to maintain numerical stability. The length of the time step depends on the surface runoff velocity and the spatial step size (DMT cell size). The maximum time step depends on the desired detail of the output data, especially during a precipitation episode when flow velocities are already lower and when the stabiliti criterion would allow too large a time step. The implementation of the numerical stability are described in reference manual.

## Total runnig time



## output directory

## extra output

If the ***extra outputs*** are check, ***temp*** and ***control*** data will be saved in output folder  
Description of extra output these parameters described in the reference manual.

## Flow direction
Sheet flow have two options of ***flow direction***. ***D8*** and ***multiple flow direction*** (Seibert, 2013).

Rill flow used only direct D8 flow direction
## kinematic/diffuse
## implicit/explicit computing


SEIBERT J., MCGLYNN B.L.: A new triangular multiple flow direction algorithm for computing upslope areas from gridded digital elevation models [online], <http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.79.977&rep=rep1&type=pdf>