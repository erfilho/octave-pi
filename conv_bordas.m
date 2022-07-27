% limpa todas as variáveis
clear all;
% fecha os arquivos abertos
close all;
% limpa o terminal
clc;

% importa a biblioteca image
pkg load image;

% abre uma imagem
img = imread('image.jpg');

% transforma para escala de cinza
escala_cinza = rgb2hsv(img)(:, :, 3);

% operador de sobel
mX = [-1, 0, 1; -2, 0, 2; -1, 0, 1];
mY = [1, 2, 1; 0, 0, 0; -1, -2, -1];

% calcula o gradiente
gX = conv2(escala_cinza, mX);
gY = conv2(escala_cinza, mY);

% magnitude do gradiente
gxy = sqrt(gX.^2 + gY.^2);

% mostra a imagem
figure
imshow(gxy);
title('Matriz de convolução para detecção de bordas');
