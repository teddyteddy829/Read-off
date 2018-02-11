%% Voxelization 
% Wentai Zhang
% 10/16/2017
clear; clc; close all;
%% parameter setup
grid_no = 32;
%% load data
filename = 'model3.obj';
[shape] = parseObjMesh(filename);
faces = shape.faceVIds';
vertices = shape.vertexPoss';

FV = struct();
FV.faces = faces;
FV.vertices = (grid_no)*(vertices+0.5) + 0.5;

volume = polygon2voxel(FV, grid_no,'none',false);

stepRange = -0.5+1/(2*grid_no):1/grid_no:0.5-1/(2*grid_no);
[Xp,Yp,Zp] = ndgrid(stepRange, stepRange, stepRange);
queryPoints = [Xp(:), Yp(:), Zp(:)];

% [tsdfPoints,~,closestPoints] = point_mesh_squared_distance(queryPoints,vertices,faces);

%% plot
figure;
subplot(1,2,1);
show3DModel(FV.faces,FV.vertices);
subplot(1,2,2);
plot3D(volume)