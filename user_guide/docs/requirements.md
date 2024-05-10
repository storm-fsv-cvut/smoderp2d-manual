# Requirements

## Model limits and recommendation
The limitations of the model lie in its mathematical representation of physical
phenomena.

SMODERP2D is an episodic model; therefore, it does not account for water
redistribution in the soil. The model assumes continuous rainfall, which begins
at the start of the calculation and ends a few minutes (or hours) before the
conclusion. Although rainfall with varying intensity can be input, it must
still be continuous. Gaps in the rainfall data would result in a
misrepresentation of runoff and erosion.

A reasonable spatial resolution is necessary for the model run properly. Each
cell in the model represents a piece of land where a small brook could form or
a rill could be created. Therefore, cells smaller than the width of a brook or
rill would lead to a misrepresentation of hydraulic in such features.
Conversely, cells that are too large would result in oversized brooks or rills,
as only a single watercourse or rill can be represented in each cell. Thus, a
cell size of 2 to 20 meters is recommended. It's important to note that the
cell size may affect the time step and, consequently, the duration of the
calculations. Therefore, it is recommended not to unnecessarily reduce the cell
size.

The SMODERP2D model is designed for catchment-scale applications and is not
suitable for computing large continental-scale hydrological events. It is
recommended for use in areas with a single outlet point and an area ranging
from tens to tens of thousands of square meters.

At its current state, the model does not allow water in the watercourse to
overflow back to the surrounding land. However, the model can provide users
with an estimation of how deep a watercourse must be to prevent overflow.

## Data requirements
The model operates with geographical data using common GIS software
(Geographical Information System). Therefore, typical input data for the model
are in the form of rasters and vectors. Rainfall data is provided as a plain
text file.  Similarly, the model outputs are stored in open-source raster and
vector formats, as well as plain text files.

## Hardware requirements
The model can run on standard laptops, PCs, or server hardware. However,
workstations tend to expedite calculations due to their high-end CPUs. RAM and
storage recommendations vary depending on the size of the modeled area and
spatial resolution.
