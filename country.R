library(rworldmap)
library(RColorBrewer)
library(ggplot2)

countries = read.csv("countries.csv", na.strings = " NA")
countries$GDP = as.numeric(as.character(countries$GDP))

sPDF = joinCountryData2Map(countries, joinCode = "NAME", nameJoinColumn = "Country",
                           verbose = TRUE)
mapParams = mapCountryData(sPDF, nameColumnToPlot = "GDP", missingCountryCol = "dark grey",
                           addLegend = FALSE, oceanCol = "lightsteelblue2")
do.call(addMapLegend, c(mapParams, legendWidth = 0.5, legendMar = 2))




