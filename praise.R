library(praise)
library(renv)
praise()
renv::status()
renv::snapshot()



praises <- data.frame(matrix(nrow=25,ncol=2))
praises_summ <- data.frame(matrix(nrow=25,ncol=1))
for (x in 1:25) {
	for (x in 1:25) {
		praises[x,1] <- praise()
	}
	praises$X2 <- duplicated(praises$X1)
	praises_summ[x,1] <- praises %>% count(praises$X2 == TRUE)
}


