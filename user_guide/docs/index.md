# SMODERP2D - Distributed event-based model for surface and subsurface runoff and erosion

Welcome to the user guide for the SMODERP2D model. The aim of this text is
to provide basic information to users on how to run the SMODERP2D model.

```sh
    @ @ @   @       @     @ @     @ @ @     @ @ @ @  @ @ @    @ @ @
   @        @ @   @ @   @     @   @     @   @        @     @  @     @
   @        @   @   @  @       @  @      @  @        @     @  @     @
     @ @    @       @  @       @  @      @  @ @ @    @ @ @    @ @ @
         @  @       @  @       @  @      @  @        @   @    @
         @  @       @   @     @   @     @   @        @    @   @
    @ @ @   @       @     @ @     @ @ @     @ @ @ @  @     @  @
    \  \  /   / /    \   \  /   \  /    /     /       @ @ @   @ @ @
     \ _\/   /_/      \   \/     \/    /_____/       @     @  @     @
         \__/          \  /      _\___/                    @  @      @
             \____      \/      /                         @   @      @
                  \_____/______/                        @     @      @
                               \                      @       @     @
                                \___________________ @ @ @ @  @ @ @
```

The SMODERP2D model is designed to calculate hydrological and erosion processes on
individual plots or small catchments. The outputs of the model are primarily
used to determine runoff conditions in a catchment and obtain parameters for
runoff and erosion risk protection measures on agricultural land. Additionally,
the model can assist in designing more complex systems, including sediment
retention ponds, dry basins, or polders. Its use complies with current
methods, technical standards, and recommended practices.

The SMODERP2D model is open source project developed by the Department
of Landscape Water Conservation, Faculty of Civil Engineering, Czech
Technical University in Prague. Source code is licenced under GNU GPL
and available from GitHub repository <https://github.com/storm-fsv-cvut/smoderp2d>.

## GIS providers

SMODERP2D model relies on a GIS software were the input and output
data can be acquired, modified and visualized. Currently, SMODERP2D
supports three GIS solutions:

- [QGIS](qgis.md)

- [GRASS GIS](grass.md)

- [ArcGIS](arcgis.md)

## Installation instructions

See specific instructions for
[QGIS](qgis.md#installation-instructions), [GRASS
GIS](grass.md#installation-instructions) and [ArcGIS
Pro](arcgis.md#installation-instructions) for details.

In case you will run SMODERP2D without the above mentioned GIS
solutions, the recommended installation procedure is based on PyPI: <https://pypi.org/project/smoderp2d/>

```sh
pip install smoderp2d
```

## Input data - sheet flow

The inputes to the model incorporates information about the area's topography, soil types and
land use spatial distribution, rainfall for surface ruonoff processes, where applicable, the geometry of
hydrographic network for stream ruonff.

Inputes are describe in goups (see the picture). Left are for QIGS, right for ArcGIS platform.
![Input data to model SMODERP](./img/AG_model_face.png).
Data types of inputes data are descrime in table ** link to the tabel**

### Digital elevation model (Compulsory)

A digital elevation model (DEM) or digital terrain model (DTM) **raster**
represents the morphology of the modelled area. Each cell in the raster contains 
information about the land elevation.

The model numerical scheme spatial discrimination is inherited from the DEM
layer cell size. The cell size can vary depending on the size of the modelled
area. For the SMODERP2D model the stabile computation  minimum cell size is recommended 2 meters, with an
optimum of 5 meters. Cell size with total area are crucial parameters for computing time.

![Digital elevation model with basemap (ČUZK)](./img/dem_byk.png)

### Soil type  map (Compulsory)


**Vector (polygon)** layer with polygons indicating the spatial distribution of soil
types. 

The figure shows a example of soil map layer. The attribute table of the layer
must include field with soil type identifier. These identifiers correspond to
unique soil and land use characteristics, which are stored in a separate table (see below).
Physical meanings of these parameters and their implementation in the model are
in detail described in the reference manual.

For instance, in Czechia soil type data from agricultural land can be obtain
via <https://rain.fsv.cvut.cz/pudy>.

![Soil map with soil type identifier](./img/soil_map.png)


### Land use / Land cover (Compulsory)

Similar to soils in the previous section, the attribute table of the land use
**vector layer (polygon) ** requires supplementation with an identifier field for land use.
These identifiers correspond to
unique soil and land use characteristics, defined in a separate table (see below).

Physical meanings of the land used parameters and their implementation in the
model are in detail described in the reference manual.

![Land Cover vector map with land cover identifier](./img/land_cover_byk.png)
For instance, in Czechia soil type data from agricultural land can be obtain
from combination of ZABAGED and LPIS data.


### Soil and landuse parameters table (Compulsory)

Another compulsory input is a table containing the values of individual soil
type and land cover parameters. 


This table is referenced by combinations of soil type and land use type
identifiers defined for each polygon in the attribute tables of the vector
inputs. In the example below, the first column contains parameters for the
combination of soil type `CA` and land cover `ZP`.


The table may be inserted into the model as a text file (.csv).  

The meanings of the individual parameters are described in reference manual.


{{ read_csv('tables/soil_veg_tab.csv', sep=';') }}

### Ranfall data
The next input is a file containing rainfall data. The rainfall is entered as a text file with two columns. The left column is the time interval in minutes, the right column is the cumulative total for the time interval in millimetres. Real measured or design precipitation data can be used in model.
For instance, in Czechia design precipitation can be obtain via web map services <https://rain.fsv.cvut.cz>.

## Input data - stream flow
Data for the watercoures are also divided to topology part and data table with unique characteristics of segments

### Water course network (Optional)
**Vector (polyline)** layer with polylines indicating the thopology of watercourses and/or temporal ditches technical conservation measure).
The figure shows a example of water courses data. The attribute table of the layer
must include field with stream type. The watercourse network must be hydrologically correct. Individual end points of the watercourse network must have a different elevation taken from the DMR and at the same time bifurcation of the watercourse cannot be allowed.
These identifiers correspond to
unique stream characteristics, which are stored in a separate table (see below).
Physical meanings of these parameters and their implementation in the model are
in detail described in the reference manual.

For instance, in Czechia stream shape data can be obtain from ZABAGED data.

![watercourse with identifier](./img/stream_data.png)

### Water course table (Optional)

This table is referenced to unique stream types defined for each polygon in the attribute tables of the watercourse network
inputs. In the example below, the first column contains parameters ** channel_ID ** for unioque stream part named.
The table may be inserted into the model as a text file (.csv).  
The meanings of the individual parameters are described in reference manual.


{{ read_csv('tables/streams_shape.dbf') }}
## Input data - other inputes and model settings
### Points of interest (Optional)
**Vector (point)** layer with point for detail outputs as hydrographs (describe in outpust). In this points are indicating the thopology of watercourses and/or temporal ditches technical conservation measure).

The monitored output data are continuously stored at these points. In the case of a point located outside the watercourse, surface runoff data are recorded. If the point is inserted into a watercourse, data are recorded for the relevant watercourse section.

### Model settings
** Maximum time step ** - initial time step Δt is the value in seconds. The input parameter is the maximum time step. The time step Δt is adjusted during the calculation according to the numerical stability condition to maintain numerical stability. The length of the time step depends on the surface runoff velocity and the spatial step size (DMT cell size). The maximum time step depends on the desired detail of the output data, especially during a precipitation episode when flow velocities are already lower and when the stabiliti criterion would allow too large a time step. The implementation of the numerical stability are described in reference manual.

**Total runnig time** - 

- output directory
- extra output
- D8/mfda
- kinematic/diffuse






## Outputs

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vehicula tempus
nunc a vulputate. Cras mauris ligula, ultrices facilisis diam quis, condimentum
convallis magna. Duis bibendum sapien ac mi tristique volutpat. Morbi dolor mi,
commodo consectetur ligula id, laoreet porttitor sapien. Nam aliquet posuere ex
eget tincidunt. Praesent vehicula erat lorem. Pellentesque habitant morbi
tristique senectus et netus et malesuada fames ac turpis egestas. Aenean sit
amet elit ac velit placerat blandit dictum faucibus massa. Integer sed dui
lectus. Aenean non fermentum enim, sed molestie diam. Cras mollis euismod arcu.
Ut eu elit et eros aliquet elementum. Aenean semper, augue quis tempus dapibus,
felis ligula sodales justo, sit amet vulputate turpis velit a lorem. Morbi
auctor dignissim tincidunt. In hac habitasse platea dictumst. Morbi rhoncus
imperdiet purus quis scelerisque.

Suspendisse et pulvinar nisi. Nulla bibendum dapibus neque eu vehicula. Aliquam
erat volutpat. Suspendisse condimentum risus vitae justo porta rutrum. Nam
rhoncus interdum dolor, id rutrum sem posuere vitae. Morbi tempus metus at
semper hendrerit. Suspendisse potenti. Quisque id velit venenatis, venenatis
tortor vitae, pellentesque augue. Maecenas pretium ligula sed eros semper, sed
viverra mauris finibus. Nullam eu neque in libero eleifend lacinia.

- [PK_test](PK_structure.md)
