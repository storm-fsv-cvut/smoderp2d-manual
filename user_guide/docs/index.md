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

## About model
SMODERP is a hydrological model designed to simulate soil erosion and surface runoff processes in small catchments or fields. Its primary focus is on predicting the impact of extrem rainfall on generation of surface runoff and cosequence erison process. The model takes into  various factors such as soil properties, land use, vegetation cover, and topography to accurately predict surface water flow, risk of rill erosion and discharge from extrem event in small watter bodies.
SMODERP can be used for several applications, including:

- **Evaluation of conservation practices**: The model can evaluate the effectiveness of soil and water conservation measures (such contour farming, managemen of cover crops, design of erosion control measure) in reducing of direct runff an rill soil erosion.
- **Assessment of soil erosion risk**: By simulating the erosion process under different rainfall events and land management practices, SMODERP helps in identifying areas at risk of rill erosion.
- **Water resources management**: By estimating surface runoff, SMODERP assists in water resources planning and management, including the design of conservation ditches systems and the assessment of flood risks.
- **Land use planning**: The model can inform land use planning decisions by predicting the impact of different land use scenarios on soil erosion and runoff.

SMODERP is characterized by its flexibility and adaptability to various scales and conditions, making it suitable for both research and practical applications in environmental and agricultural settings. Its development and updates are typically the result of collaborative efforts among research institutions, universities, and environmental agencies, aiming to improve its accuracy, user-friendliness, and applicability to a wide range of environmental and hydrological issues.

## Users

The SMODERP hydrological model is utilized by a diverse group of professionals and researchers involved in environmental science, hydrology, land management, and related fields. 

Civil and enviromental engineers, particularly those in water resources engineering, stormwater management, and erosion control, use SMODERP for designing effective drainage systems, retention basins, and other infrastructure to manage runoff and mitigate erosion risks.

Among its users are hydrologists who study the movement of surface watter from rainfall extrems. SMODERP can be used to predict surface runoff and soil erosion in response to various hydrological events. Environmental scientists, focusing on addressing environmental problems such as soil erosion, water pollution, and habitat destruction, employ the model to evaluate the impacts of land use changes and conservation practices.

Conservationists and non-governmental organizations focused on conservation efforts and environmental protection utilize SMODERP to identify areas at risk, promote sustainable land management practices, and evaluate the success of conservation initiatives. Lastly, academics and students in environmental science, hydrology, agricultural science, and related disciplines use the model for educational purposes, research projects, and to deepen their understanding of hydrological processes and the dynamics of soil erosion. 

## Simulated processes

- **Precipitation**: -the model begins with specific or design rainfall event, including its intensity, duration, and temporal distribution. 
- **Interception** - vegetation can intercept a portion of the rainfall, storing it on leaves, branches, and stems. Leaf area index and maximal interception are used for.
- **Infiltration** - the model estimates infiltration rates are calculated based on soil characteristics, land use, and the initial moisture condition of the soil. The Phillip infiltratin equation is used.
- **Surface Runoff Generation** - once the rainfall intensity exceeds the soil’s infiltration capacity, excess water starts to flow over the land surface. Two subprocesses describe surface flow.
  - **Sheet flow** - flat flow on the whole surface
  - **Rill flow** - flow concentrated in to rills
- **Flow in water bodies** - the model simulates runoff in streams and (dry) channels. It uses hydraulic principles and equations based on Manning’s equation, to calculate the speed and volume of water flow, considering the channel characteristics, roughness. Model calculated with base flow and inputes from surrounded watershed.