## ---- setup, include=FALSE----------------------------------------------------
knitr::opts_chunk$set(comment = "#>")
require(knitr)
require(StemAnalysis)

## ---- eval=FALSE--------------------------------------------------------------
#  install.packages("StemAnalysis")

## ---- eval=FALSE--------------------------------------------------------------
#  require(StemAnalysis)
#  require(knitr) # To input tables in this document

## ---- eval=TRUE, cache=TRUE---------------------------------------------------
data(stemdata)
str(stemdata)

## ---- eval=TRUE, cache=TRUE---------------------------------------------------
data(parameterdata)
str(parameterdata)

## ---- eval=TRUE, cache=TRUE---------------------------------------------------
data(BEFdata)
str(BEFdata)

## ---- eval=TRUE, cache=TRUE---------------------------------------------------
stemgrowth <- stemanalysism(xtree = 8, stemgrowth = TRUE, stemdata = stemdata)
knitr::kable(stemgrowth)

## ---- echo=FALSE, out.width="120%"--------------------------------------------
knitr::include_graphics("../man/Figures/StemGrowth.png")

## ---- eval=TRUE, cache=TRUE---------------------------------------------------
allomcarbon <- stemanalysism(xtree = 8, treecarbon = TRUE, stemdata = stemdata, parameterdata = parameterdata)
knitr::kable(allomcarbon)

## ---- echo=FALSE--------------------------------------------------------------
knitr::include_graphics("../man/Figures/TreeCarbon_allometric.png")

## ---- eval=TRUE, cache=TRUE---------------------------------------------------
volumecarbon <- stemanalysism(xtree = 8, treecarbon = TRUE, stemdata = stemdata, BEFdata = BEFdata)
knitr::kable(volumecarbon)

## ---- echo=FALSE--------------------------------------------------------------
knitr::include_graphics("../man/Figures/TreeCarbon_volume.png")

## ---- eval=FALSE, cache=TRUE--------------------------------------------------
#  stemgrowth <- stemanalysism(xtree = 8, HDmodel = TRUE, stemdata = stemdata)

## ---- echo=FALSE--------------------------------------------------------------
knitr::include_graphics("../man/Figures/HDmodel.png")

