% LIMPA TODAS AS VARIÁVEIS
clear all;
% FECHA OS ARQUIVOS ABERTOS
close all;
% LIMPA O TERMINAL
clc;
% CARREGA O PACOTE DE IMAGENS
pkg load image;

% ABRE A IMAGEM
lago = imread("src/lago1.jpg");
pessoa = imread("src/praia.jpg");
passaro = imread("src/saturation.jpg");
floresta = imread("src/sombra2.jpg");

function [rgbImage] = solarizar(img);
  img = im2double(img);
  red_chl = img(:, :, 1);
  green_chl = img(:, :, 2);
  blue_chl = img(:, :, 3);
  amp_fac_red = 1.45;
  amp_fac_green = 1.24;
  amp_fac_blue = 1.09;
  red_chl = (red_chl * amp_fac_red);
  green_chl = (green_chl * amp_fac_green);
  blue_chl = (blue_chl * amp_fac_blue);
  rgbImage = cat(3, red_chl, green_chl, blue_chl);
endfunction

lago_f = solarizar(lago);
pessoa_f = solarizar(pessoa);
passaro_f = solarizar(passaro);
floresta_f = solarizar(floresta);


figure;
subplot(2, 4, 1);
imshow(lago);
title("Imagem original");
subplot(2, 4, 5);
imshow(lago_f);
title("Imagem com efeito");

subplot(2, 4, 2);
imshow(pessoa);
title("Imagem original");
subplot(2, 4, 6);
imshow(pessoa_f);
title("Imagem com efeito");

subplot(2, 4, 3);
imshow(passaro);
title("Imagem original");
subplot(2, 4, 7);
imshow(passaro_f);
title("Imagem com efeito");

subplot(2, 4, 4);
imshow(floresta);
title("Imagem original");
subplot(2, 4, 8);
imshow(floresta_f);
title("Imagem com efeito");

