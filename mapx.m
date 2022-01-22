function mapped = mapx(value, xmin, xmax, rmin, rmax)
% Slope
m           = (rmax-rmin)/(xmax-xmin);
% Intercept 
b           = rmin - m*xmin;
% Mapped 
mapped      = m*value + b;
end

