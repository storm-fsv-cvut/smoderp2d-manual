#!/bin/sh

mkdir -p docs/tables

wget https://raw.githubusercontent.com/storm-fsv-cvut/smoderp2d/master/tests/data/rain_sim/soil_veg_tab.csv -P docs/tables/

exit 0
