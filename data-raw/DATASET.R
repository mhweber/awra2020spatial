## code to grab data sets for package
library(devtools)
# install esri2sf if not installed
install_github("yonghah/esri2sf")
library("esri2sf")

# City of Austin Parks ArcGIS REST Service
url <- "https://services.arcgis.com/0L95CJ0VTaxqcmED/arcgis/rest/services/BOUNDARIES_city_of_austin_parks/FeatureServer/0"
parks <- esri2sf(url)
plot(parks$geoms)

# City of Austin Bike Paths ArcGIS REST Service
url <- "https://services.arcgis.com/0L95CJ0VTaxqcmED/arcgis/rest/services/TRANSPORTATION_bicycle_facilities/FeatureServer/0"
bike_paths <- esri2sf(url)
plot(bike_paths$geoms)

usethis::use_data(parks)
usethis::use_data(bike_paths)
