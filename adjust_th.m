function [y] = adjust_th(x, theta, left_stride, margin)
% Takes 2d thermal image and converts it to image that is ready to registration
%
% outputs:
% y - output 2d thermal image
%
% inputs:
% x - input 2d thermal image
% theta - conterclockwise rotation
% right_stride - preserve image untill this pixel on x axis
% margin - margin to eliminate frame of photo
  
  [N, M] = size(x);
  y = x(margin:N-margin, margin:left_stride);
  y = imrotate(y, theta);
  
end
