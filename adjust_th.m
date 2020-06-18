function [y] = adjust_th(x, theta, right_cut_width, margin)
% Takes 2d thermal image and converts it to image that is ready to registration
%
% outputs:
% y - output 2d thermal image
%
% inputs:
% x - input 2d thermal image
% theta - conterclockwise rotation
% right_cut_width - width of the colormap stride
% margin - margin to eliminate frame of photo
  
  [N, M] = size(x);
  y = x(margin:N-margin, margin:M-right_cut_width);
  y = imrotate(y, theta);
  
end
