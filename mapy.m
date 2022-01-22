function mapped = mapy(value, ymin, ymax, rmin, rmax)
% Slope
m           = (rmin-rmax)/(ymin-ymax);
% Intercept 
b           = rmin - m*ymin;
% Mapped 
mapped      = m*value + b;
end

