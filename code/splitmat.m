%% split mat files according to orientations
% Wentai Zhang
% 2018/02/11
clear;
clc;
close all;
%% load data
data = xlsread('airplane_orientation.xlsx','I2:N727');
ind_xpos = data(:,1);
ind_xneg = data(:,2);
ind_ypos = data(:,3);
ind_yneg = data(:,4);
ind_z = data(:,5);
ind_tilt = data(:,6);