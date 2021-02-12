clc;
clear all;

testname = 'example_test';
load ('ExampleData.mat'); % load the dataset
[innr, k, sg, parameters] = parameters(testname); % load parameters
%% Extract kARMA feature
[features, d] = Feature_arma('network_TimeSeries',Data,parameters);
manifold = 'G'; 
%% Select landmark points
landmarkn = Select_landmark(features,parameters);
[rla,cla] = size(landmarkn);
rao= parameters.DimSubsp;
landmark_data = reshape(landmarkn, rla/rao, cla*rao);
%% Clustering landmark on Riemannian
data = features{1,1};
[W,Theta] = Riemannian_clustering(landmark_data, manifold, innr, ...
             k, parameters);
% [W,Theta] = Riemannian_clustering(data, manifold, innr, ...
%             k, parameters);
Adjacency_matrix =  Adjacency(W,Theta,sg);
k1 = full(sum(Adjacency_matrix));
twom = sum(k1);
B = @(v) Adjacency_matrix(:,v) - k1'*k1(v)/twom;
[landmark_label,Q] = genlouvain(B,6000,0); %Label is the clustering results
%% Clustering non-landmark on Riemannian
label = Sequential_Clustering(landmark_label,landmarkn,features,parameters);
