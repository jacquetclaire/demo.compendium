% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wildfinder_data.R
\name{wildfinder_data}
\alias{wildfinder_data}
\title{Download wildfinder dataset}
\usage{
wildfinder_data(overwrite = FALSE)
}
\arguments{
\item{overwrite}{a logical. If \code{TRUE}, the file will be downloaded again and
the previous version will be erased.}
}
\value{
No return value
}
\description{
This function downloads the wildfinder datasets (csv file) hosted on the
GitHub repository \url{https://github.com/rdatatoolbox/datarepo/}.

The WWF WildFinder database contains presence/absence data for the world's terrestrial amphibians, reptiles, birds, and mammals, by terrestrial ecoregion. In this repository, only 4,936 mammals species are provided. Data have been cleaned and are structured in three csv files.

The file won't be downloaded if already exists locally (except if \code{overwrite = TRUE}).
The files will be stored in ' \verb{data/wilfinder/}. This folder will be created if required.
}
