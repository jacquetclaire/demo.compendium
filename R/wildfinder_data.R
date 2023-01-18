#' Download wildfinder dataset
#'
#' @description 
#' This function downloads the wildfinder datasets (csv file) hosted on the 
#' GitHub repository <https://github.com/rdatatoolbox/datarepo/>. 
#' 
#' The WWF WildFinder database contains presence/absence data for the world's terrestrial amphibians, reptiles, birds, and mammals, by terrestrial ecoregion. In this repository, only 4,936 mammals species are provided. Data have been cleaned and are structured in three csv files.
#' 
#' The file won't be downloaded if already exists locally (except if `overwrite = TRUE`).
#' The files will be stored in ' `data/wilfinder/`. This folder will be created if required.
#' 
#' @param overwrite a logical. If `TRUE`, the file will be downloaded again and
#'   the previous version will be erased.
#' @return No return value
#' @export
#'
wildfinder_data <- function(overwrite = FALSE) {
  
  ## Destination location ---- 
  path <- here::here("data", "wildfinder")
  
  ## File names ----
 data_type=c("mammals_list","ecoregions_list","ecoregions_species")
  filenames <- paste0("wildfinder-",data_type,".csv")

  ## GitHub URL ----
  url <- paste0("https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/")
  
  for(filename in unique(filenames)){
    
  if (file.exists(file.path(path, filename)) && !overwrite) {
    
    ## Check if exists locally ----
    message("The filename already exists. Use 'overwrite = TRUE' to replace it")
    
  } else {
    
    ## Create destination folder ----
    dir.create(path, showWarnings = FALSE, recursive = TRUE)
    
    ## Download file ----
    utils::download.file(url = paste0(url, filename),
                         destfile = file.path(path, filename))
  }
  invisible(NULL) 
  }
}
