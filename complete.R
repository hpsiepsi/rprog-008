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
  
  good <- complete.cases(dat[["sulfate"]], dat[["nitrate"]])
  
  # result
  length(dat[good, 1])
  
  # actual complete records
  #dat_cmp <- dat[good, ]
  
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
}