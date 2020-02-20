# awra2020spatial
## An R data package for the AWRA 2020 GIS R spatial workshop

This package provides some example R datasets for demonstration purposes for the AWRA 2020 R spatial workshop including City of [Austin GIS data pusblished as ArcGIS REST services](http://www.arcgis.com/home/search.html?q=owner%3A%22CTM.Publisher%22). The ArcGIS REST services have been scraped and transformed to `sf` objects using the [esri2sf R package](https://github.com/yonghah/esri2sf):


## Installation
You can install awra2020spatial from Github:
```
library(devtools)
install_github("mhweber/awra2020spatial")
library(awra2020spatial)
```

## Use
```
data(package = "awra2020spatial")
data(bike_paths)
data(parks)
```
