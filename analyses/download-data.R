# Download project raw data
#
# This script will download the PanTHERIA and WWF WildFinder datasets. The
# four files will be stored in `data/`.
# 
# All functions used in the script have been developed for this project
# and can be found in the folder R/.
#
# Claire Jacquet <claire.jacquet@umontpellier.fr>
# 2023/01/18
#
## Download PanTHERIA database ----

dl_pantheria_data(overwrite = FALSE)

## Download WWF WildFinder database ----

wildfinder_data(overwrite = FALSE)

## Download data description (README)

dl_data_descr(overwrite-FALSE)