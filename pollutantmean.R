pollutantmean <- function(directory, polluntant, id = 1 : 332){
    
    wd <- getwd()
    dataList <- list()
    for(i in id){
        
        fileName <- paste(sprintf("%03g", i), "csv", sep = ".")        
        readList <- read.csv(paste(wd, directory, fileName, sep = "/"))
        dataList <- rbind(dataList, readList[polluntant])         
    }
    meanOut <- sapply(dataList, mean, na.rm = TRUE)
    return(unname(meanOut))
}