#' Download PanTHERIA dataset
#'
#' @description 
#' This function downloads the PanTHERIA dataset (text file) hosted on the 
#' GitHub repository <https://github.com/rdatatoolbox/datarepo/>. 
#' 
#' PanTHERIA is a species-level database of life history, ecology, and geography of extant and recently extinct mammals. The dataset can be found in data/pantheria/PanTHERIA_1-0_WR05_Aug2008.txt. Metadata can be found here. Missing values are coded -999.
#' Citation: Kate EJ, Bielby J, Cardillo M et al. (2009) PanTHERIA: A species-level database of life history, ecology, and geography of extant and recently extinct mammals. Ecology, 90, 2648. DOI: 10.1890/08-1494.1
#' 
#' The file won't be downloaded if already exists locally (except if `overwrite = TRUE`).
#' The file `PanTHERIA_1-0_WR05_Aug2008.txt` will be stored in `data/pantheria/`. This folder will be created if required.
#' 
#' @param overwrite a logical. If `TRUE`, the file will be downloaded again and
#'   the previous version will be erased.
#' @return No return value
#' @export

dl_pantheria_data <- function(overwrite = FALSE) {
  
  ## Destination location ---- 
  path <- here::here("data", "pantheria")
  
  ## File name ----
  filename <- "PanTHERIA_1-0_WR05_Aug2008.txt"
  
  ## GitHub URL ----
  url <- paste0("https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/",
                "data/pantheria/")
  
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
