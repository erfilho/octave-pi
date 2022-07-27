clear all; % limpa todas as variáveis
close all; % limpa todas as figuras
clc; % limpa a janela de comandos

% importa o pacote imagem
pkg load image;

% carrega uma imagem
img = imread('image.jpg');

% convertendo para escala de cinza
cinza_img = rgb2gray(img);

% mostrando a imagem
figure
imshow(cinza_img);
title("Imagem em escala de cinza");
imwrite(cinza_img, "original.jpg");

% calcula o negativo da imagem
oupt = 255 - cinza_img;

% mostra a imagem
figure
imshow(uint8(oupt));
title("Output image");
imwrite(uint8(oupt), "negativo.jpg");