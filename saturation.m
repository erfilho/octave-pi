% LIMPA TODAS AS VARIÁVEIS
clear all;
% FECHA OS ARQUIVOS ABERTOS
close all;
% LIMPA O TERMINAL
clc;
% CARREGA O PACOTE DE IMAGENS
pkg load image;
% ABRE A IMAGEM
imagem = imread("src/imagem1.jpg");
% MOSTRA A IMAGEM ORIGINAL
figure;
imshow(imagem);
title("Imagem original");

# -------------------------

% Aumenta a satuação
HSV = rgb2hsv(imagem);
HSV(:, :, 2) = HSV(:, :, 2) * 1.5;
HSV(HSV > 1) = 1;

img = hsv2rgb(HSV);
imwrite(img, "src/saturation.jpg");

figure;
imshow(img);
title("Imagem com mais saturação");