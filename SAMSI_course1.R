dat = read.table("USW00013722-TMAX.txt")
library(nonlinearTseries)
temp = na.omit(dat$V2)
tau.acf = timeLag(temp,technique = "acf")

emb.dim = estimateEmbeddingDim(temp, time.lag = tau.acf,
                     max.embedding.dim = 15)

