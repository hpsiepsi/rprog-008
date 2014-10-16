corr <- function(directory, threshold = 0 ) {
   
   ##fileList <- list.files('specdata', pattern = "*.csv")
   id = 1:332
   cr <- c()
   i=1;
   
   for(loop_id in id){
      
      dat <- read.csv(sprintf("%s/%03d.csv",directory, loop_id), header = TRUE, sep = ",", quote = "\"",
                      dec = ".", fill = TRUE, comment.char = "")
      
      good <- complete.cases(dat[["sulfate"]], dat[["nitrate"]])
      
      ngood <- sum(good)
      
      #print(sprintf("%03d.csv, good=%d ", loop_id, ngood))
      
      if(ngood > threshold ){
         #print(cor(dat[["sulfate"]], dat[["nitrate"]],
         #          use = "complete.obs"))
         cr[i] <- cor(dat[["sulfate"]], dat[["nitrate"]],
                            use = "complete.obs")
         i <- i+1
         
      }
      
      # result
      #length(dat[nobs, 1])
      #nobs <- c(nobs, length(dat[good, 1]))
      
   }
cr
}
