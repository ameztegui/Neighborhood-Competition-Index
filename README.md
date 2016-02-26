# Neighborhood-Competition-Index
A set of scripts to calculate NCi given a tree map, and to represent the effects of different factors on growth

This repository contains the script "NCI_extraction", which, given a tab-delimited tree map containing the position, species and diameter of trees, calculates the NCI for each tree in the plot


This function requires 3 parameters, and 4 more are optional
        # targets: the dataframe containing the tab-delimited tree map.
        # alpha: the exponent for the DBHs
        # beta: the exponent for the distances
        # gamma: the species j NCI Lambda. By default, it takes value 1
        # min.target.dbh: Minimum target tree DBH, in cm. By default, takes value 9 cm
        # min.neighbor.dbh: min. neighbor tree, in cm. By default, it takes value 9 cm
        # max.neighbor.radius: NCI Maximum Crowding Distance, in meters (default = 20 m)
        

The dataset "targets" is the tab-delimited file generated by SORTIE. It will tipycally contain 6 columns, although it may contain more depending on the specifications of the detailed output. It is important to ensure that the names of the variables exactly match the names below, 
and that the units are right. Otherwise, scale them prior to calculations.
###
###       X : X coordinate (m)
###       Y : Y coordinate (m)
###       Species
###       Type: Seedling/Sapling/Adult/Snag
###       Diam: diameter of the target tree (cm)
###       Height: height of the targer tree (m)
