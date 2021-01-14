clc;
clear all;

testname = 'example_test';
load ('ExampleData_State.mat'); % load the dataset
[innr, k, sg, parameters] = parameters_eGCT_kARMA_stateclustering(testname); % load parameters
num_clusters=4;
%% Extract kARMA feature
[features, d] = Feature_arma('network_TimeSeries',Data,parameters);
manifold = 'G'; 
%% Clustering on Riemannian
data = features{1,1};
[W,Theta] = Riemannian_clustering(data, manifold, innr, ...
            k, parameters);
Adjacency_matrix =  Adjacency(W,Theta,sg);
k1 = full(sum(Adjacency_matrix));
twom = sum(k1);
B = @(v) Adjacency_matrix(:,v) - k1'*k1(v)/twom;
[Label,Q] = genlouvain(B,10000,0); %Label is the clustering results
filename = 'Labels.mat';
save(filename, 'Label', '-v7.3');  
