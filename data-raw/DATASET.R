## code to grab data sets for package
library(devtools)
# install esri2sf if not installed
install_github("yonghah/esri2sf")
library("esri2sf")
library(USAboundaries)

# City of Austin Parks ArcGIS REST Service
url <- "https://services.arcgis.com/0L95CJ0VTaxqcmED/arcgis/rest/services/BOUNDARIES_city_of_austin_parks/FeatureServer/0"
parks <- esri2sf(url)
plot(parks$geoms)

# City of Austin Bike Paths ArcGIS REST Service
url <- "https://services.arcgis.com/0L95CJ0VTaxqcmED/arcgis/rest/services/TRANSPORTATION_bicycle_facilities/FeatureServer/0"
bike_paths <- esri2sf(url)
plot(bike_paths$geoms)

# PNW in Lambers projection
states <- us_states()
pnw <- states %>%
  dplyr::filter(name %in% c('Oregon','Washington','Idaho')) %>%
  st_transform('+proj=aea +lat_1=41 +lat_2=47 +lat_0=44 +lon_0=-120 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs')

usethis::use_data(parks)
usethis::use_data(bike_paths)
usethis::use_data(pnw)
