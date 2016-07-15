# Copyright 2016 The Board of Trustees of the Leland Stanford Junior University.
# Direct inquiries to Sam Borgeson (sborgeson@stanford.edu)
# or professor Ram Rajagopal (ramr@stanford.edu)

# documentation for package data

#' Zipcoe to location mapping
#'
#' A dataset containing columns with US zip codes and the corresponding locaiton information
#'
#' @usage data(ERLE_ZIP_LOCATION)
#' @format A data frame with 43191 rows and 7 variables:
#' \describe{
#'   \item{zip}{zip code, as a number}
#'   \item{city}{city the zip code is in}
#'   \item{state}{two letter abbreviation for the state the zip code is in}
#'   \item{latitude}{latitude of the zip code center (post office?)}
#'   \item{longitude}{longitude of the zip code center (post office?)}
#'   \item{timezone}{timesone, as offste relative to GMT time}
#'   \item{dst}{indicator for participation in daylight savings time}
#' }
#' @source \url{http://can.not.remember/}
"ERLE_ZIP_LOCATION"

#' A zip code to CA climate zone mapping
#'
#' A dataset containing columns with US zip codes and the corresponding CA CEC climate zones
#'
#' @usage data(CA_ZIP_CLIMATE)
#' @format A data frame with 1706 rows and 2 variables:
#' \describe{
#'   \item{ZIP.Code}{zip code, as a number}
#'   \item{Building.Climate.Zone}{the CA CEC climate zone the zip code is in}
#' }
#' @source \url{http://CEC.web.site.somewhere/}
"CA_ZIP_CLIMATE"

#' A zip code to census zip code tabulation area mapping
#'
#' A dataset containing columns with US zip codes and the corresponding ZCTA ids
#'
#' @usage data(ZIP_TO_ZCTA)
#'
#' @format A data frame with 41979 rows and 5 variables:
#' \describe{
#'   \item{ZIP}{zip code, as a 0 padded string}
#'   \item{ZIPType}{zip code type}
#'   \item{CityName}{Name of the city the zip code is in}
#'   \item{StateAbbr}{Two letter abbreviation for the state the zip code is in}
#'   \item{ZCTA}{the census zip code tabulation area (ZCTA) the zip code most overlaps with}
#' }
#' @source \url{http://some.random.helpful.blog/}
"ZIP_TO_ZCTA"

#' A summary of census statistics for each ZCTA in the census
#'
#' A dataset containing summary census statistics for each ZCTA in the census
#'
#' @usage data(CENSUS_GAZ)
#'
#' @format A data frame with 33120 rows and 9 variables:
#' \describe{
#'   \item{ZCTA}{zip code tabulation area as a 0 padded string}
#'   \item{POP10}{Population in 2010}
#'   \item{ALAND}{Land area in sqft?}
#'   \item{AWATER}{Water area in sqft?}
#'   \item{ALAND_SQMI}{Land area in sqare miles}
#'   \item{AWATER_SQMI}{Water area in square miles}
#'   \item{INTPTLAT}{Latitude of the area}
#'   \item{INTPTLONG}{Longitude of the area}
#' }
#' @source \url{http://us.census.link/}
"CENSUS_GAZ"

#' 2011 5-year census data on SELECTED SOCIAL CHARACTERISTICS IN THE UNITED STATES (household types, marital status, education, citizenship, ancestry), spanning 2007-2012
#'
#' A dataset containing ZCTA level census data for CA
#' Data files that contain demographic, housing, income, etc. data by zip code tabulation area (ZCTA) are from the
#' American Community Survey (ACS) 2011. The 5yr estimate data spans 2007 to 2012.
#' To download, go here: http://factfinder2.census.gov/faces/nav/jsf/pages/searchresults.xhtml
#' choose 5-digit Zip Code Tabulation Areas under "Geographies" search option,
#' then choose CA, then "all 5-digit...within CA"
#' to locate ACS summary data, choose "Data Profile" under topic : "Product Type"
#' This will produce a very manageable list, but to be very specific, you can also choose
#' "2011 ACS 5-year estimates" under topic: "Dataset" as well
#' the resulting DP* data files will be aggregated by ZCTA and span the breadth of topics covered by the ACS
#' Check boxes next to all the data you want to download and wait for the zip file to be generated and download
#' Unzip that file into a directory off your working directory called census/ACS_11/
#'
#' The tables of greates interest are:
#' DP02: SELECTED SOCIAL CHARACTERISTICS IN THE UNITED STATES (household types, marital status, education, citizenship, ancestry)
#' DP03: SELECTED ECONOMIC CHARACTERISTICS (employment status, job, income, poverty)
#' DP04: SELECTED HOUSING CHARACTERISTICS (occupancy, units, vintage, tenure, value, costs, fuels)
#' DP05: ACS DEMOGRAPHIC AND HOUSING ESTIMATES (sex, age, race)
#' file naming convention is ACS_<yr>_<span>_<table>_with_ann.csv
#' for example: ACS_11_5YR_DP02_with_ann.csv is the table with social characteristics
#' columns are named HC01_VC03, HC02_VC03, HC03_VC03, HC04_VC03, etc.
#' HC01 is for the estimated value
#' HC02 is for the margin of error for the estimated value
#' HC03 is for the estimated percentage of the value
#' HC04 is for the percentage margin of error
#'
#' ACS_<yr>_<span>_<table>_metadata.csv provides human readable names for the coded columns in the data files
#' heirarchical levels of categorical breakdowns are separate by '-',
#' with the top level also containing the type of observation followed by a ';'
#' For example: HC04_VC12 is Percent Margin of Error; HOUSEHOLDS BY TYPE - Family households (families) - Female householder, no husband present, family - With own children under 18 years
#' So this field provides the % margin of error for:
#'   HOUSEHOLDS BY TYPE
#' Family households (families)
#' Female householder, no husband present, family
#' With own children under 18 years
#'
#' For insipiration, you can look at even more human friendly data lists here (same names can be searched in the metadata):
#' http://factfinder2.census.gov/faces/help/jsf/pages/metadata.xhtml?lang=en&type=table&id=table.en.ACS_11_5YR_DP02#
#' http://factfinder2.census.gov/faces/help/jsf/pages/metadata.xhtml?lang=en&type=table&id=table.en.ACS_11_5YR_DP03#
#' http://factfinder2.census.gov/faces/help/jsf/pages/metadata.xhtml?lang=en&type=table&id=table.en.ACS_11_5YR_DP04#
#' http://factfinder2.census.gov/faces/help/jsf/pages/metadata.xhtml?lang=en&type=table&id=table.en.ACS_11_5YR_DP05#
#'
#' for entries in the data files:
#'   (X) means NA
#' - means too few samples to compute an estimate
#' ** means too few samples to calc margin of error (error cols only)
#' a - following a median means the median is in the lowest interval of the distro
#' a + following a median means the median is in the highest interval of the distro
#' a *** in the margin of error column means that the estimate is in the lowest or highest interval (i.e. stat test inappropriate)
#' a ***** in the margin of error means that the estimate is controlled, so a statistical test is inappropriate
#' an 'N' in the margin of error indicates that the data cannot be displayed because the sample size is too small
#' margin of error means that prob that the true value lies in the range defined by the estimate +- the margin is 90%
#' the upshot is essentailly that values that cannot be parsed as numerical can be treated as missing data for the puroses of analysis
#' these will be turned into NA values so lm, and functions with na.rm, etc. will ignore them.
#'
#' @usage data(ACS_11_5YR_DP02)
#' @format A data frame with 1769 rows and 599 variables:
#' \describe{
#'   \item{ZCTA}{zip code tabulation area as a 0 padded string}
#'   \item{HC01*}{estimated values}
#'   \item{HC02*}{margin of error for the estimated value}
#'   \item{HC03*}{estimated percentage of the value}
#'   \item{HC04*}{percentage margin of error}
#' }
#' @source \url{http://factfinder2.census.gov/faces/nav/jsf/pages/searchresults.xhtml}
"ACS_11_5YR_DP02"

#' 2011 5-year census data on SELECTED ECONOMIC CHARACTERISTICS (employment status, job, income, poverty), spanning 2007-2012
#'
#' A dataset containing ZCTA level census data for CA
#' Data files that contain demographic, housing, income, etc. data by zip code tabulation area (ZCTA) are from the
#' American Community Survey (ACS) 2011. The 5yr estimate data spans 2007 to 2012.
#' To download, go here: http://factfinder2.census.gov/faces/nav/jsf/pages/searchresults.xhtml
#' choose 5-digit Zip Code Tabulation Areas under "Geographies" search option,
#' then choose CA, then "all 5-digit...within CA"
#' to locate ACS summary data, choose "Data Profile" under topic : "Product Type"
#' This will produce a very manageable list, but to be very specific, you can also choose
#' "2011 ACS 5-year estimates" under topic: "Dataset" as well
#' the resulting DP* data files will be aggregated by ZCTA and span the breadth of topics covered by the ACS
#' Check boxes next to all the data you want to download and wait for the zip file to be generated and download
#' Unzip that file into a directory off your working directory called census/ACS_11/
#'
#' The tables of greates interest are:
#' DP02: SELECTED SOCIAL CHARACTERISTICS IN THE UNITED STATES (household types, marital status, education, citizenship, ancestry)
#' DP03: SELECTED ECONOMIC CHARACTERISTICS (employment status, job, income, poverty)
#' DP04: SELECTED HOUSING CHARACTERISTICS (occupancy, units, vintage, tenure, value, costs, fuels)
#' DP05: ACS DEMOGRAPHIC AND HOUSING ESTIMATES (sex, age, race)
#' file naming convention is ACS_<yr>_<span>_<table>_with_ann.csv
#' for example: ACS_11_5YR_DP02_with_ann.csv is the table with social characteristics
#' columns are named HC01_VC03, HC02_VC03, HC03_VC03, HC04_VC03, etc.
#' HC01 is for the estimated value
#' HC02 is for the margin of error for the estimated value
#' HC03 is for the estimated percentage of the value
#' HC04 is for the percentage margin of error
#'
#' ACS_<yr>_<span>_<table>_metadata.csv provides human readable names for the coded columns in the data files
#' heirarchical levels of categorical breakdowns are separate by '-',
#' with the top level also containing the type of observation followed by a ';'
#' For example: HC04_VC12 is Percent Margin of Error; HOUSEHOLDS BY TYPE - Family households (families) - Female householder, no husband present, family - With own children under 18 years
#' So this field provides the % margin of error for:
#'   HOUSEHOLDS BY TYPE
#' Family households (families)
#' Female householder, no husband present, family
#' With own children under 18 years
#'
#' For insipiration, you can look at even more human friendly data lists here (same names can be searched in the metadata):
#' http://factfinder2.census.gov/faces/help/jsf/pages/metadata.xhtml?lang=en&type=table&id=table.en.ACS_11_5YR_DP02#
#' http://factfinder2.census.gov/faces/help/jsf/pages/metadata.xhtml?lang=en&type=table&id=table.en.ACS_11_5YR_DP03#
#' http://factfinder2.census.gov/faces/help/jsf/pages/metadata.xhtml?lang=en&type=table&id=table.en.ACS_11_5YR_DP04#
#' http://factfinder2.census.gov/faces/help/jsf/pages/metadata.xhtml?lang=en&type=table&id=table.en.ACS_11_5YR_DP05#
#'
#' for entries in the data files:
#'   (X) means NA
#' - means too few samples to compute an estimate
#' ** means too few samples to calc margin of error (error cols only)
#' a - following a median means the median is in the lowest interval of the distro
#' a + following a median means the median is in the highest interval of the distro
#' a *** in the margin of error column means that the estimate is in the lowest or highest interval (i.e. stat test inappropriate)
#' a ***** in the margin of error means that the estimate is controlled, so a statistical test is inappropriate
#' an 'N' in the margin of error indicates that the data cannot be displayed because the sample size is too small
#' margin of error means that prob that the true value lies in the range defined by the estimate +- the margin is 90%
#' the upshot is essentailly that values that cannot be parsed as numerical can be treated as missing data for the puroses of analysis
#' these will be turned into NA values so lm, and functions with na.rm, etc. will ignore them.
#'
#' @usage data(ACS_11_5YR_DP03)
#' @format A data frame with 1769 rows and 551 variables:
#' \describe{
#'   \item{ZCTA}{zip code tabulation area as a 0 padded string}
#'   \item{HC01*}{estimated values}
#'   \item{HC02*}{margin of error for the estimated value}
#'   \item{HC03*}{estimated percentage of the value}
#'   \item{HC04*}{percentage margin of error}
#' }
#' @source \url{http://factfinder2.census.gov/faces/nav/jsf/pages/searchresults.xhtml}
"ACS_11_5YR_DP03"

#' 2011 5-year census data on SELECTED HOUSING CHARACTERISTICS (occupancy, units, vintage, tenure, value, costs, fuels), spanning 2007-2012
#'
#' A dataset containing ZCTA level census data for CA
#' Data files that contain demographic, housing, income, etc. data by zip code tabulation area (ZCTA) are from the
#' American Community Survey (ACS) 2011. The 5yr estimate data spans 2007 to 2012.
#' To download, go here: http://factfinder2.census.gov/faces/nav/jsf/pages/searchresults.xhtml
#' choose 5-digit Zip Code Tabulation Areas under "Geographies" search option,
#' then choose CA, then "all 5-digit...within CA"
#' to locate ACS summary data, choose "Data Profile" under topic : "Product Type"
#' This will produce a very manageable list, but to be very specific, you can also choose
#' "2011 ACS 5-year estimates" under topic: "Dataset" as well
#' the resulting DP* data files will be aggregated by ZCTA and span the breadth of topics covered by the ACS
#' Check boxes next to all the data you want to download and wait for the zip file to be generated and download
#' Unzip that file into a directory off your working directory called census/ACS_11/
#'
#' The tables of greates interest are:
#' DP02: SELECTED SOCIAL CHARACTERISTICS IN THE UNITED STATES (household types, marital status, education, citizenship, ancestry)
#' DP03: SELECTED ECONOMIC CHARACTERISTICS (employment status, job, income, poverty)
#' DP04: SELECTED HOUSING CHARACTERISTICS (occupancy, units, vintage, tenure, value, costs, fuels)
#' DP05: ACS DEMOGRAPHIC AND HOUSING ESTIMATES (sex, age, race)
#' file naming convention is ACS_<yr>_<span>_<table>_with_ann.csv
#' for example: ACS_11_5YR_DP02_with_ann.csv is the table with social characteristics
#' columns are named HC01_VC03, HC02_VC03, HC03_VC03, HC04_VC03, etc.
#' HC01 is for the estimated value
#' HC02 is for the margin of error for the estimated value
#' HC03 is for the estimated percentage of the value
#' HC04 is for the percentage margin of error
#'
#' ACS_<yr>_<span>_<table>_metadata.csv provides human readable names for the coded columns in the data files
#' heirarchical levels of categorical breakdowns are separate by '-',
#' with the top level also containing the type of observation followed by a ';'
#' For example: HC04_VC12 is Percent Margin of Error; HOUSEHOLDS BY TYPE - Family households (families) - Female householder, no husband present, family - With own children under 18 years
#' So this field provides the % margin of error for:
#'   HOUSEHOLDS BY TYPE
#' Family households (families)
#' Female householder, no husband present, family
#' With own children under 18 years
#'
#' For insipiration, you can look at even more human friendly data lists here (same names can be searched in the metadata):
#' http://factfinder2.census.gov/faces/help/jsf/pages/metadata.xhtml?lang=en&type=table&id=table.en.ACS_11_5YR_DP02#
#' http://factfinder2.census.gov/faces/help/jsf/pages/metadata.xhtml?lang=en&type=table&id=table.en.ACS_11_5YR_DP03#
#' http://factfinder2.census.gov/faces/help/jsf/pages/metadata.xhtml?lang=en&type=table&id=table.en.ACS_11_5YR_DP04#
#' http://factfinder2.census.gov/faces/help/jsf/pages/metadata.xhtml?lang=en&type=table&id=table.en.ACS_11_5YR_DP05#
#'
#' for entries in the data files:
#'   (X) means NA
#' - means too few samples to compute an estimate
#' ** means too few samples to calc margin of error (error cols only)
#' a - following a median means the median is in the lowest interval of the distro
#' a + following a median means the median is in the highest interval of the distro
#' a *** in the margin of error column means that the estimate is in the lowest or highest interval (i.e. stat test inappropriate)
#' a ***** in the margin of error means that the estimate is controlled, so a statistical test is inappropriate
#' an 'N' in the margin of error indicates that the data cannot be displayed because the sample size is too small
#' margin of error means that prob that the true value lies in the range defined by the estimate +- the margin is 90%
#' the upshot is essentailly that values that cannot be parsed as numerical can be treated as missing data for the puroses of analysis
#' these will be turned into NA values so lm, and functions with na.rm, etc. will ignore them.
#'
#' @usage data(ACS_11_5YR_DP04)
#' @format A data frame with 1769 rows and 567 variables:
#' \describe{
#'   \item{ZCTA}{zip code tabulation area as a 0 padded string}
#'   \item{HC01*}{estimated values}
#'   \item{HC02*}{margin of error for the estimated value}
#'   \item{HC03*}{estimated percentage of the value}
#'   \item{HC04*}{percentage margin of error}
#' }
#' @source \url{http://factfinder2.census.gov/faces/nav/jsf/pages/searchresults.xhtml}
"ACS_11_5YR_DP04"

#' 2011 5-year census data on ACS DEMOGRAPHIC AND HOUSING ESTIMATES (sex, age, race), spanning 2007-2012
#'
#' A dataset containing ZCTA level census data for CA
#' Data files that contain demographic, housing, income, etc. data by zip code tabulation area (ZCTA) are from the
#' American Community Survey (ACS) 2011. The 5yr estimate data spans 2007 to 2012.
#' To download, go here: http://factfinder2.census.gov/faces/nav/jsf/pages/searchresults.xhtml
#' choose 5-digit Zip Code Tabulation Areas under "Geographies" search option,
#' then choose CA, then "all 5-digit...within CA"
#' to locate ACS summary data, choose "Data Profile" under topic : "Product Type"
#' This will produce a very manageable list, but to be very specific, you can also choose
#' "2011 ACS 5-year estimates" under topic: "Dataset" as well
#' the resulting DP* data files will be aggregated by ZCTA and span the breadth of topics covered by the ACS
#' Check boxes next to all the data you want to download and wait for the zip file to be generated and download
#' Unzip that file into a directory off your working directory called census/ACS_11/
#'
#' The tables of greates interest are:
#' DP02: SELECTED SOCIAL CHARACTERISTICS IN THE UNITED STATES (household types, marital status, education, citizenship, ancestry)
#' DP03: SELECTED ECONOMIC CHARACTERISTICS (employment status, job, income, poverty)
#' DP04: SELECTED HOUSING CHARACTERISTICS (occupancy, units, vintage, tenure, value, costs, fuels)
#' DP05: ACS DEMOGRAPHIC AND HOUSING ESTIMATES (sex, age, race)
#' file naming convention is ACS_<yr>_<span>_<table>_with_ann.csv
#' for example: ACS_11_5YR_DP02_with_ann.csv is the table with social characteristics
#' columns are named HC01_VC03, HC02_VC03, HC03_VC03, HC04_VC03, etc.
#' HC01 is for the estimated value
#' HC02 is for the margin of error for the estimated value
#' HC03 is for the estimated percentage of the value
#' HC04 is for the percentage margin of error
#'
#' ACS_<yr>_<span>_<table>_metadata.csv provides human readable names for the coded columns in the data files
#' heirarchical levels of categorical breakdowns are separate by '-',
#' with the top level also containing the type of observation followed by a ';'
#' For example: HC04_VC12 is Percent Margin of Error; HOUSEHOLDS BY TYPE - Family households (families) - Female householder, no husband present, family - With own children under 18 years
#' So this field provides the % margin of error for:
#'   HOUSEHOLDS BY TYPE
#' Family households (families)
#' Female householder, no husband present, family
#' With own children under 18 years
#'
#' For insipiration, you can look at even more human friendly data lists here (same names can be searched in the metadata):
#' http://factfinder2.census.gov/faces/help/jsf/pages/metadata.xhtml?lang=en&type=table&id=table.en.ACS_11_5YR_DP02#
#' http://factfinder2.census.gov/faces/help/jsf/pages/metadata.xhtml?lang=en&type=table&id=table.en.ACS_11_5YR_DP03#
#' http://factfinder2.census.gov/faces/help/jsf/pages/metadata.xhtml?lang=en&type=table&id=table.en.ACS_11_5YR_DP04#
#' http://factfinder2.census.gov/faces/help/jsf/pages/metadata.xhtml?lang=en&type=table&id=table.en.ACS_11_5YR_DP05#
#'
#' for entries in the data files:
#'   (X) means NA
#' - means too few samples to compute an estimate
#' ** means too few samples to calc margin of error (error cols only)
#' a - following a median means the median is in the lowest interval of the distro
#' a + following a median means the median is in the highest interval of the distro
#' a *** in the margin of error column means that the estimate is in the lowest or highest interval (i.e. stat test inappropriate)
#' a ***** in the margin of error means that the estimate is controlled, so a statistical test is inappropriate
#' an 'N' in the margin of error indicates that the data cannot be displayed because the sample size is too small
#' margin of error means that prob that the true value lies in the range defined by the estimate +- the margin is 90%
#' the upshot is essentailly that values that cannot be parsed as numerical can be treated as missing data for the puroses of analysis
#' these will be turned into NA values so lm, and functions with na.rm, etc. will ignore them.
#'
#' @usage data(ACS_11_5YR_DP05)
#' @format A data frame with 1769 rows and 327 variables:
#' \describe{
#'   \item{ZCTA}{zip code tabulation area as a 0 padded string}
#'   \item{HC01*}{estimated values}
#'   \item{HC02*}{margin of error for the estimated value}
#'   \item{HC03*}{estimated percentage of the value}
#'   \item{HC04*}{percentage margin of error}
#' }
#' @source \url{http://factfinder2.census.gov/faces/nav/jsf/pages/searchresults.xhtml}
"ACS_11_5YR_DP05"

