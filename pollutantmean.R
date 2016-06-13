pollutantmean <- function(directory, pollutant, id = 1:332) {
  dataMean<-c()
  #list all file in directory
  all_files <- list.files(directory)
  #construct file path
  file_paths <- paste(directory, all_files, sep="/")
  #search for files for id
  for(i in id) {
    data_file <- read.csv(file_paths[i], header=TRUE, sep=",")
    removeNA<-as.matrix(subset(data_file,!is.na(eval(parse(text = pollutant))),select=eval(parse(text = pollutant))))
    colnames(removeNA)<-""
    dataMean<-c(dataMean,removeNA)
  }
  
  #calculate mean
  result <- mean(dataMean)
  return(round(result, 3)) 
}

pollutantmean2 <- function(directory, pollutant, id = 1:332) {
  dataMean<-c()
  #list all file in directory
  all_files <- list.files(directory)
  #construct file path
  file_paths <- paste(directory, all_files, sep="/")
  
  #search for files for id
  for(i in id) {
    data_file <- read.csv(file_paths[i], header=TRUE, sep=",")
    removeNA<-!is.na(data_file[, pollutant])
    valid_data <- data_file[removeNA, pollutant]
    dataMean <- c(dataMean,valid_data)
  }
  
  #calculate mean
  result <- mean(dataMean)
  return(round(result, 3)) 
}



