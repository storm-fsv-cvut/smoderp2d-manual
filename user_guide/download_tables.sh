#!/bin/sh

rm -rf docs/tables
mkdir docs/tables

wget https://raw.githubusercontent.com/storm-fsv-cvut/smoderp2d/master/tests/data/rain_sim/soil_veg_tab.csv -P docs/tables/
wget https://github.com/storm-fsv-cvut/smoderp2d/raw/master/tests/data/rain_sim/streams_shape.dbf -P docs/tables/

exit 0
