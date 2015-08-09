library(enaR)

## Generate the flow matrix
flow.mat <- array(abs(rnorm(100,4,2))*sample(c(0,1),100,replace=TRUE),
                  dim=c(4,4))
## Name the nodes
rownames(flow.mat) <- colnames(flow.mat) <- paste('node',(1:nrow(flow.mat)),sep='')
## Generate the inputs
inputs <- runif(nrow(flow.mat),0,4)
## Generate the exports
exports <- inputs
## "Pack" the model into a network object
fake.model <- pack(flow=flow.mat,
                   input=inputs,
                   export=exports,
                   living=TRUE)
## The model network object contents
fake.model

## https://raw.githubusercontent.com/SEELab/workshops/beta/docs/enar_example.R
