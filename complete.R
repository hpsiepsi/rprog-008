complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ....
  
  
  ##fileList <- list.files('specdata', pattern = "*.csv")
  nobs <- c()
  
  for(loop_id in id){
  
    dat <- read.csv(sprintf("%s/%03d.csv",directory, loop_id), header = TRUE, sep = ",", quote = "\"",
             dec = ".", fill = TRUE, comment.char = "")
  
    nobs <- complete.cases(dat[["sulfate"]], dat[["nitrate"]])
  
    # result
    nobs <- c(goods, length(dat[good, 1]))

  }
  
  c***(ids, nobs)
  
  # actual complete records
  #dat_cmp <- dat[good, ]
  
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
}
