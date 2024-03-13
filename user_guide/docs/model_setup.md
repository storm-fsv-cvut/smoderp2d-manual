# Model settings
## Maximum time step
initial time step Δt is the value in seconds. The input parameter is the maximum time step. The time step Δt is adjusted during the calculation according to the numerical stability condition to maintain numerical stability. The length of the time step depends on the surface runoff velocity and the spatial step size (DMT cell size). The maximum time step depends on the desired detail of the output data, especially during a precipitation episode when flow velocities are already lower and when the stabiliti criterion would allow too large a time step. The implementation of the numerical stability are described in reference manual.
## Total runnig time
The total simulation time refers to the duration over which the model performs its computations. To calculate the overall runoff volume accurately, the simulation duration must extend beyond the period of the simulated rainfall event. Conversely, to determine the peak flow rate, the simulation time may be shorter than the precipitation duration.
## Output directory
This specifies the location where the results will be stored. Note that this folder may be overwritten.
## Extra output
If the ***extra outputs*** are check, ***temp*** and ***control*** data will be saved in output folder  
Description of extra output these parameters described in the *reference manual*.
## Computation settings
### Flow direction
Sheet flow have two options of ***flow direction***. ***D8*** and ***multiple flow direction (MFD)*** (Seibert, 2013). MFD is defalut

Rill flow used D8 flow direction

In places of watercourses, the water from the surface flow is further conducted through a network of watercourses in individual coswequencess sections.

### kinematic/diffuse
### implicit/explicit computing


SEIBERT J., MCGLYNN B.L.: A new triangular multiple flow direction algorithm for computing upslope areas from gridded digital elevation models [online], <http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.79.977&rep=rep1&type=pdf>