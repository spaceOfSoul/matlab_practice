
img=imread('tree575.jpg','jpg');
grayscale_img = rgb2gray(img);
[M, N, C]=size(img)
back_color=[0 0 0];

key_press = waitforbuttonpress

hFig=figure('color', back_color,...
    'name', 'My figure' ,...
    'position', [100 100 N M],...
    'numbertitle', 'off',...
    'Units', 'characters'
    'KeyPressFcn',@myfun);
imshow(img);

function myfun(src,event)
   disp(event.Key);
end
