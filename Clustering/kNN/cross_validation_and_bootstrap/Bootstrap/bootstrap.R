library(ISLR)
library(e1071)


normalize <- function(x) {
  norm <- (x - min(x)) / (max(x) - min(x))
  return(norm)
}

marketSample <- function(smarkt, test_pct = 20) {
  train_pct = 100 - test_pct
  
  set.seed(test_pct)
  test_indx <- sample(nrow(smarkt), nrow(smarkt) * test_pct / 100, replace = FALSE)
  test.all <- smarkt[test_indx, ]  
  
  test.data <- test.all[, -9]
  test.direction <- test.all$Direction
  
  train.all <- smarkt[-test_indx, ]  
  train.data <- train.all[, -9]
  train.direction <- train.all$Direction
  
  rtrn_list <- list(testdata = test.data, testdir = test.direction, traindata = train.data, traindir = train.direction)
  
  return(rtrn_list)
}


input.norml <- as.data.frame(lapply(Smarket[, -9], normalize))
input.norml$Direction <- Smarket$Direction

full.data <- input.norml[, -9]
full.dir <- input.norml[, 9]

temp_list <- marketSample(input.norml, 20)
train.data <- temp_list$traindata
train.dir <- temp_list$traindir

test.data <- temp_list$testdata
test.dir <- temp_list$testdir

rm(temp_list)

knn.boot <- tune.knn(x = full.data, y = full.dir, k = 1:20, tunecontrol = tune.control(sampling = "boot"))

summary(knn.boot)

plot(knn.boot)
