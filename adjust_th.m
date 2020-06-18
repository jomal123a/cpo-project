function [y] = adjust_th(x, min_temp, max_temp, theta, right_cut_width, margin)
% Takes 2d thermal image and converts it to image that is ready to registration
% y - output 2d thermal image
% x - input 2d thermal image
% min_temp - minimal temperature in photo
% max_temap - maximal temperature in photo
% theta - conterclockwise rotation
% right_cut_width - width of the colormap stride
% margin - margin to eliminate frame of photo
  
  [N, M] = size(x);
  y = x(margin:N-margin,margin:M-right_cut_width);
  
end
