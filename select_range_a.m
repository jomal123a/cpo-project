function map = select_range_a(x_th, temp_min_s, temp_max_s, temp_min, temp_max)

temp_min_s = (255 * (temp_min_s - temp_min)) / (temp_max - temp_min);
temp_max_s = (255 * (temp_max_s - temp_min)) / (temp_max - temp_min);

map=colormap(gray(255));
kolor=colormap(jet(255));

for i=(1:255)
    if (i >= temp_min_s && i <= temp_max_s)
        a = i - temp_min_s;
        norm = a / (temp_max_s - temp_min_s);
        
        map(i,1)=kolor(int16(norm * 255),1);
        map(i,2)=kolor(int16(norm * 255),2);
        map(i,3)=kolor(int16(norm * 255),3);
    end
end