%% Read .off file and transform to voxel
% Wentai Zhang
% 2018/01/10
clear;
close all;
clc;
%%
VolumeSize = 60;
folder = '../airplane_aligned/*.mat';
filename = dir(folder);
for i = 1:length(filename)
    m = load(filename);
    
    
end

% [vertex,face] = read_off('airplane_0283.off');
faces = m.f';
vertices = m.v';
FV = struct('faces',faces,'vertices',vertices);
Volume=polygon2voxel(FV,VolumeSize,'auto');
% show3DModel(FV.faces,FV.vertices);
plot3D(Volume);