complete <- function(directory, id = 1:332) {
  
  # get the length of id vector
  id_len <- length(id)
  valid_data <- rep(0, id_len)
  
  #list all file in directory
  all_files <- list.files(directory)
  #construct file path
  file_paths <- paste(directory, all_files, sep="/")
  j <- 1 
  for (i in id) {
    data_file <- read.csv(file_paths[i], header=TRUE, sep=",")
    #count data hase no missing values
    valid_data[j] <- sum(complete.cases(data_file))
    j <- j + 1
  }
  result <- data.frame(id = id, nobs = valid_data)
  return(result)
} 