# Outputs


The model processes a wide range of resulting data to make it usable for surface hydrology and design protection measures and can be divided into two basic groups: - continuously stored results at user-defined points
- overall results, usually in raster format.
The results can also be divided into three groups
- basic results, which are available to regular users and contain only important overall results,
- detailed results, which describe information not essential for most applied results (for example, the distribution of modeled quantity in furrows and surface runoff, etc.),
- temporary files, which contain intermediate results during the processing of input data and serve to detect potential errors in the input data.

## Basic outputs

### Raster data

Among the basic results are the maximum or cumulative values of selected quantities:
- cumulative infiltration (cinfil_m3.asc) – the total amount of infiltrated water,
- cumulative precipitation (crain_m3.asc) – the total amount of precipitation,
- cumulative surface runoff (cvsur_m3.asc) – the total amount of runoff,
- maximum surface flow (mqsur_m3_s.asc) – maximum flow at a given point,

### Vector, point and table data

folder ./control_point - time series of outpust at monitored points. *The listed quantities at points depend on the type of runoff process. If the point is in the cell of a hydrographic network segment, the values of this entire segment relevant to the runoff process in the watercourse are listed. If the point is in the watershed area, the model gives the values of surface (areal and furrow) runoff for the respective cell*.

Cumulative ruonff a maximal discharge in the edn of streams elements are stored in XXXX, **csv or .txt file** *in case stream flow are calculated*.

XXX - outpoint, stream parts *need be hire*

### Hydrograph data
./control_point - stored for each point in computation domain time series of basic data

*table with descrtiption of cols will be hire?*

## Advanced outputs

Advanced outputs are stored in two specific folders:
- ./Control stored control results of subprocesses and subrutines

*table with descrtiption will be hire?*

- ./temp folder - stored mostly data from datapreparation (depends on GIS provider) 

*table with descrtiption will be hire?*


