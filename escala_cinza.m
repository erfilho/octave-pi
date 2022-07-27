% limpa todas as variáveis
clear all;
% fecha todas as imagens
close all;
% limpa o console
clc;

% importa a biblioteca image
pkg load image;

% carrega uma imagem 
img = imread('image.jpg');

% transforma para escala de cinza
grayscale = rgb2hsv(img)(:, :, 3);

% salva a imagem em escala de cinza 
imwrite(grayscale, 'escala_cinza.jpg');

% mostra a imagem
figure
imshow(grayscale);
title('Escala de cinza')