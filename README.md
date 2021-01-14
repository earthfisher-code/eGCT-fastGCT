# eGCT-fastGCT
This project implements the eGCT and fastGCT algorithm introduced in paper "Fast Sequential Clustering in Riemannian Manifolds for Dynamic and Time-Series-Annotated Multilayer 
Networks"

## eGCT with kARMA feature for State Clustering task
* First unzip the utilityeGCT_kARMA_stateclustering.zip file
* The data should be a tensor with (Nodes x Length x Layers), for example in the ExampleData.mat, it has 10 nodes, 4 layer and length of time series is 500 so the size is 10 x 500 x 4
* Define the parameters in parameters_eGCT_kARMA_stateclustering.m file
* Define the kernel function in KernelFunctionARMA.m file
* Run eGCT_kARMA_stateclustering.m and the clustered label is saved in Label.mat.

* I will keep update the code of the rest of the algorithm of eGCT_kARMA_communitydetection, eGCT_kARMA_sequencetracking and eGCT_kPC and fastGCT.
