corr <- function(directory, threshold = 0) {
    wd <- getwd()
    df <- list()
    
    ids <- 1:332
    

   for(i in ids){
        
        fileName <- paste(sprintf("%03g", i), "csv", sep = ".")
        readData = read.csv(paste(wd, directory, fileName, sep = "/"))
        nobs <- nrow(na.omit(readData))
        if(nobs>threshold){
            x<- na.omit(readData[c(2,3)])
            corrs <- cor(x[1], x[2]) 
            df <- rbind(df, corrs[1])           
        }
    }
    if(length(df) != 0)
      df <- unlist(df)    
    return(df)

}