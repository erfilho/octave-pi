clear all; % limpa todas as variáveis
close all; % fecha todos os arquivos abertos
clc; % limpa o console

% carrega a biblioteca image
pkg load image; 
 
% carrega uma imagem
img = imread('image.jpg');

% visualiza a imagem
figure
imshow(img);
title("Imagem original");

% mostra somente o canal R
figure 
imshow(img(:, :, 1));
title("Canal R");

% mostra somente o canal G
figure
imshow(img(:, :, 2));
title("Canal G");

% mostra somente o canal B
figure
imshow(img(:, :, 3));
title("Canal B");
