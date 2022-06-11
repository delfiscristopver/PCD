clc; clear; close all;
 
% membaca citra rgb
I = imread('airplane.jpg');

% mengkonversi citra rgb menjadi grayscale
J = rgb2gray(I);

% membuat inisial masking
m = zeros(size(J,1),size(J,2));
m(111:231,123:243) = 1;

% segmentasi citra menggunakan active contour
seg = activecontour(J,m,350);

% menampilkan citra hasil pengolahan
figure,
subplot(2,2,1);imshow(I);title('Citra rgb asli');
subplot(2,2,2);imshow(m);title('Inisial masking');
subplot(2,2,3);imshow(seg);title('Citra biner hasil segmentasi');
subplot(2,2,4);imshow(I);title('Citra rgb hasil segmentasi');
hold on
contour(seg, 'y','LineWidth',2);
hold off