# eGCT-fastGCT
This project implements the eGCT and fastGCT algorithm introduced in paper "Fast Sequential Clustering in Riemannian Manifolds for Dynamic and Time-Series-Annotated Multilayer 
Networks"(C. Ye, K. Slavakis, J. Nakuci, S. F. Muldoon, and J. Medaglia. Fast sequential clustering in Riemannian manifolds for dynamic and time-series-annotated multilayer networks. Accepted for publication in IEEE Open Journal of Signal Processing.)

## eGCT with kARMA feature for State Clustering task (eGCT_kARMA_StateClustering folder)
* First unzip the utility_eGCT_kARMA_stateclustering.zip file
* The data should be a tensor with (Nodes x Length x Layers), for example in the ExampleData.mat, it has 10 nodes, 4 layer and length of time series is 500 so the size is 10 x 500 x 4
* Define the parameters in parameters_eGCT_kARMA_stateclustering.m file
* Define the kernel function in KernelFunctionARMA.m file
* Run eGCT_kARMA_stateclustering.m and the clustered label is saved in Label.mat.

## eGCT with kARMA feature for Community Detection task (eGCT_kARMA_CommunityDetection folder)
* First unzip the utility_eGCT_kARMA_CommunityDetection.zip file
* The data should be a matrix with (Nodes x Length), for example in the ExampleData.mat, it has 10 nodes and length of time series is 500 so the size is 10 x 500
* Define the parameters in parameters_eGCT_kARMA_CommunityDetection.m file
* Define the kernel function in KernelFunction.m file
* Run eGCT_kARMA_CommunityDetection.m and the clustered label is saved in Label.mat.

## eGCT with kARMA feature for Subnetwork sequence clustering task (eGCT_kARMA_SubnetworkSequence folder)
* First unzip the utility_eGCT_kARMA_SubnetworkSequence.zip file
* The data should be a matrix with (Nodes x Length x Layers), for example in the ExampleData.mat, it has 10 nodes, 4 layer and length of time series is 500 so the size is 10 x 500 x 4
* Define the parameters in parameters_eGCT_kARMA_SubnetworkSequence.m file
* Define the kernel function in KernelFunction.m file
* Run eGCT_kARMA_SubnetworkSequence.m and the clustered label is saved in Label.mat.

## fastGCT with kARMA feature for State Clustering task (fastGCT_kARMA_StateClustering folder)
* First unzip the utility_fastGCT_kARMA_stateclustering.zip fil
* The data should be a matrix with (Nodes x Length x Layers), for example in the ExampleData.mat, it has 10 nodes, 4 layer and length of time series is 500 so the size is 10 x 500 x 4
* Define the parameters in parameters.m file
* Define the kernel function in KernelFunction.m file
* Run fastGCT_kARMA_stateclustering.m and the clustered label is saved in Label.mat.

## fastGCT with kARMA feature for Community Detection task (fastGCT_kARMA_CommunityDetection folder)
* First unzip the utility_fastGCT_kARMA_CommunityDetection.zip fil
* The data should be a matrix with (Nodes x Length), for example in the ExampleData.mat, it has 10 nodes and length of time series is 500 so the size is 10 x 500
* Define the parameters in parameters.m file
* Define the kernel function in KernelFunction.m file
* Run fastGCT_kARMA_CommunityDetection.m and the clustered label is saved in Label.mat.

## fastGCT with kARMA feature for Subnetwork sequence clustering task (eGCT_kARMA_SubnetworkSequence folder)
* First unzip the utility_fastGCT_kARMA_SubnetworkSequence.zip file
* The data should be a matrix with (Nodes x Length x Layers), for example in the ExampleData.mat, it has 10 nodes, 4 layer and length of time series is 500 so the size is 10 x 500 x 4
* Define the parameters in parameters.m file
* Define the kernel function in KernelFunction.m file
* Run fastGCT_kARMA_SubnetworkSequence.m and the clustered label is saved in Label.mat.
