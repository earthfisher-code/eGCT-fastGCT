clc;
clear all;

testname = 'example_test';
load ('ExampleData.mat'); % load the dataset
[innr, k, sg, parameters] = parameters(testname); % load parameters
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
[Label,Q] = genlouvain(B,6900,0); %Label is the clustering results

