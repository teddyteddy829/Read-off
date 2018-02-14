%% Read mat file and transform to voxel
% Wentai Zhang
% 2018/01/10
clear;
close all;
clc;
%%
VolumeSize = 30;
folder = '../airplane_normalized/*.mat';
filename = dir(folder);
airplane_vox = [];
for i = 376
    m = load(sprintf('../airplane_normalized/%s',filename(i).name));
    faces = m.f';
    vertices = (m.v'+0.5)*VolumeSize+0.5;
    FV = struct('faces',faces,'vertices',vertices);
    Volume=polygon2voxel(FV,VolumeSize,'none');
    VecV = Volume(:)';
    airplane_vox = cat(1,airplane_vox,VecV);
    show3DModel(m.f',m.v');
    figure;
    plot3D(Volume);
end

