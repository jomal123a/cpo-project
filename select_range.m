function select_range(x_th, temp_min_s, temp_max_s, temp_min, temp_max)

temp_min_s = (255 * (temp_min_s - temp_min)) / (temp_max - temp_min);
temp_max_s = (255 * (temp_max_s - temp_min)) / (temp_max - temp_min);

r = (0:255)';
g = (0:255)';
b = (0:255)';
for i=(1:256)
    if (i >= temp_min_s && i <= temp_max_s)
        r(i) = 0;
        g(i) = 255;
        b(i) = 0;
    end
end

r = r/255;
g = g/255;
b = b/255;
map = [r,g,b];

imagesc(x_th);
colormap(map);