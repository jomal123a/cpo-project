x_th = imread('cup02_th.bmp');
x_th = x_th(:, :, 1);

x_th = adjust_th(x_th, 0, 765, 6);
map = select_range_a(x_th, 40, 80, 20, 100);
imagesc(x_th);
colormap(map);