% limpa todas as variáveis
clear all;
% fecha todos os arquivos abertos
close all;
% limpa o console
clc;

% importa a biblioteca image
pkg load image;

% carrega uma imagem
img = imread('image.jpg');

% transforma para escala de cinza
escala_cinza = rgb2hsv(img)(:, :, 3);

% transforma para binário
% define o limite da transformação
lim = 0.2;
bin = im2bw(escala_cinza, lim);

% salva a imagem
imwrite(bin, 'binario.jpg');

% mostra a imagem
figure
imshow(bin);
title('Exemplo de binarização');