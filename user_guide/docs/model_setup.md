# Model settings
Besides the input date, further setting needs to be provided to start the
calculation.

## Maximum time step
The time step Δt is adjusted during the calculation according
Courant–Friedrichs–Lewy condition to maintain numerical stability.  The length
of the time step depends on the surface runoff velocity and the spatial step
size (DMT cell size). Therefore a ***maximum time*** step needs to be set.

The maximum time step depends on the desired detail of the output data,
especially during a precipitation episode when flow velocities are already
lower and when the stability criterion would allow too large a time step. The
implementation of the numerical stability are described in *reference manual*.

The maxim time step is also user as the initial time step in the calculation.

## Total runnig time
The total simulation time refers to the duration over which the model performs
its computations. To calculate the overall runoff volume accurately, the
simulation duration must extend beyond the period of the simulated rainfall
event. Conversely, to determine the peak flow rate, the simulation time may be
shorter than the precipitation duration.

## Output directory
This specifies the location where the results will be stored. Note that this
folder may be overwritten.

## Extra output
If the ***extra outputs*** are check, ***temp*** and ***control*** data will be
saved in output folder.  Description of extra output these parameters described
in the **reference manual**.

## Computation settings

### Flow direction
Flow direction algorithm controls to which computational cell or cells the 
water flows i.e. it controls the flow routing. Two options are implemented in SMODERP2D:

- ***D8*** a single direction flow algorithm  and 
- ***multiple flow direction***  algorithm (MFD) (Seibert, 2013).

If D8 is set, all of the sheet flow volume from a cell flows to single adjacent
cell with highest elevation difference.  If MFD is set,  the sheet flow volume
from a cell is divided proportionally to multiple downslope cells based on
elevation difference between cells.

**note**: If MDF is set, the rill flow  still uses the D8 flow direction
algorithm since the rill is essentially small channel that can only flow in on
direction. 

In watercourse network, the water from the surface flow is further conducted
through a network based on the topology of the network. 

### Shallow water flow equation approximation
The model is capable of using kinematic and diffusive wave approximation of
Saint-Venant equations. 

***Kinematic wave*** approximation assumes that the slope of the water level is
parallel to the slope of the soil surface. This approximation is valid for step
slopes where substantial  backwater effect does not occur. 

The ***diffusive wave***  is driven be the waster surface slope.  Therefore,
the backwater effect is considered. The diffusive wave approximation should be
used if flat areas as presented in the model. However, the diffusive wave is
computationally more intensive compared to kinematic wave approximation. 

For more details about the flow equation approximation see the **reference manual**.

### Time derivative approximation
The SMODERP2D calculated the transient water flow. Therefore, the time
derivation takes place in the equation. To solve the time approach of the
solution this derivative has to be solved. 

Ordinary **explicit** and **implicit**  Euler methods are implemented in
SMODERP2D to solve the time derivative. Essentially, the **explicit** method is
usually more sensitive to time step length. In some cases this can cause slow
down in the computation due to extremely small time step. The **implicit**
generally allows the model to run with larger time step (depends on the model
setting). However, a system of linear equations need to be constructed and
solved. 

Usually, the advantages of implicit method are pronounced for computation of
larger areas (>1,000,000 cells in raster). For smaller areas (<1,000 cells in
raster) the computation time to construct and solve the system of linear
equations slows down the computation and explicit method may lead to shorter
computational time, especially for larger raster cell size (>5 m). 

No general recommendation to which method to use can be given. It is
recommended to test both methods for each specific model, if necessary. 

For further information about the explicit and implicit Euler method  see the
**reference manual**.





**reference manual**.

SEIBERT J., MCGLYNN B.L.: A new triangular multiple flow direction algorithm
for computing upslope areas from gridded digital elevation models [online],
<http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.79.977&rep=rep1&type=pdf>
