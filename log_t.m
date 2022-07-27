% limpa todas as variáveis
clear all;
% fecha todos os arquivos
close all;
% limpa o console
clc;

% importa a biblioteca image
pkg load image;

% carrega uma imagem
img = imread('src/sombra1.jpg');

% passa a imagem para escala de cinza
gray = rgb2hsv(img)(:, :, 3);

% faz a transformação logaritmica
c = 2;
output = c * log(1 + gray);

%mostra a imagem original
figure
imshow(img)
title('Imagem original')

% mostra a saída
figure
imshow(output)
title('Transformação logaritmica')