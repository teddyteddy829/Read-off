%% Read .off file and transform to voxel
% Wentai Zhang
% 2018/01/10
clear;
close all;
clc;
%%
VolumeSize = 32;
[vertex,face] = read_off('airplane_0283.off');
faces = face';
vertices = vertex';
FV = struct('faces',faces,'vertices',vertices);
Volume=polygon2voxel(FV,VolumeSize,'auto');
% show3DModel(FV.faces,FV.vertices);
plot3D(Volume);