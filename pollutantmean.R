pollutantmean <- function(directory, polutant, id=1:332){
  
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  
  #change to directory
  #directory <- "C:/Users/mrross/Dropbox/Personal/ComputerStuff/BigDataStuff/CorsicaClasses/scripts_git/specdata"
  #setwd(directory)
  
  # loop for files
  for( loop_id in id)
  {
    #read loopfile.cvs
    dat <- read.csv(sprintf("%s/%03d.csv",directory, loop_id), header = TRUE, sep = ",", quote = "\"",
             dec = ".", fill = TRUE, comment.char = "")

    # average w/o NA
    means <- c( means, mean(dat[[polutant]], na.rm = TRUE) )
    
    # record how many
    good <- complete.cases(dat[[polutant]])
    sizes <- c( sizes, length(dat[good, 1]) )
   }
  
  # finish weighted average
  avg = sum(means * sizes)/sum(sizes)
  
  avg
}