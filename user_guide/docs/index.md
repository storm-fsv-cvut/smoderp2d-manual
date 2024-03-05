# SMODERP2D
**Distributed event-based model for surface a sheet runoff and for design of erosion control measure**

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
runoff and erosion control measures on agricultural land. Additionally,
the model can assist in designing more complex systems, including sediment
retention ponds, dry basins, or polders. Its use complies with current
methods, technical standards, and recommended practices.

The SMODERP2D model is open source project developed by the Department
of Landscape Water Conservation, Faculty of Civil Engineering, Czech
Technical University in Prague. Source code is licenced under GNU GPL
and available from GitHub repository <https://github.com/storm-fsv-cvut/smoderp2d>.

## Abut model

## Users

## Model definition and simulated processes

## GIS providers

SMODERP2D model relies on a GIS software were the input and output
data can be acquired, modified and visualized. Currently, SMODERP2D
supports three GIS solutions:

- [QGIS](qgis.md)

- [GRASS GIS](grass.md)

- [ArcGIS](arcgis.md)

## Installation instructions

***See specific instructions for
[QGIS](qgis.md#installation-instructions), [GRASS
GIS](grass.md#installation-instructions) and [ArcGIS
Pro](arcgis.md#installation-instructions) for details***

In case you will run SMODERP2D without the above mentioned GIS
solutions, the recommended installation procedure is based on PyPI: <https://pypi.org/project/smoderp2d/>

```sh
pip install smoderp2d
```

## Supported by
