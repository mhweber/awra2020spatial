#' Sample datasets to use for AWRA 2020 R spatial workshop
#'
#' This package contains sample data to use for
#' demonstration purposes for the AWRA 2020 R spatial workshop.
#' @docType package
#' @name awra2020spatial
#' @aliases awra2020spatial awra2020spatial-package
NULL

#' Austin bike paths - a dataset of bicycle transportation
#' facilities developed by the City of Austin and published
#' as an ArcGIS REST service.
#'
#' @source \url{https://services.arcgis.com/0L95CJ0VTaxqcmED/arcgis/rest/services/TRANSPORTATION_bicycle_facilities/FeatureServer/0}
#' @format An sf data frame of 12203 observations and 20 variables
"bike_paths"

#' Austin parks - a dataset of park boundaries developed by
#' the City of Austin and publishedas an ArcGIS REST service.
#'
#' @source \url{https://services.arcgis.com/0L95CJ0VTaxqcmED/arcgis/rest/services/BOUNDARIES_city_of_austin_parks/FeatureServer/0}
#' @format An sf data frame of 304 observations and 56 variables
"parks"
