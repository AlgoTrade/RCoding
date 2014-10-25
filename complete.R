complete <- function(directory, id = 1:332){
    wd <- getwd()
    df <- data.frame()
    
    for(i in id){
        
        fileName <- paste(sprintf("%03g", i), "csv", sep = ".")
        readData = read.csv(paste(wd, directory, fileName, sep = "/"))
        df <- rbind(df, c(i, nrow(na.omit(readData))))         
    }
    colnames(df) <- c("id", "nobs")
    return (df)
}