clc; clear all;

x=imread('dog.jpg'); %put your image in the ''
[r,c,rgb]=size(x);
disp('The row of the picture is:');
disp(r);
disp('The coulum of the picture is:');
disp(c);

 row_start = input('Please input first ROW of the subject region:');
 
 row_finish = input('Please input last ROW of the subject region:');
 
 column_start = input('Please input first COULUM of the subject region:');
 
 column_finish = input('Please input last COULUM of the subject region:');
 
Intensity = input('Please input the intensity of the blur:');
 
 %bluring the whole image

 region = x( 1 : r, 1 : c , :);
 
 blurred_image = imgaussfilt( region, Intensity );  

 figure; imshow(blurred_image);

 %replacing the subject region with the blured region
 
blurred_image(row_start :row_finish, column_start: column_finish,:)=x(row_start :row_finish, column_start: column_finish,:);

figure; imshow(blurred_image);
