clc;
clear variables;
close all;

% Data from
% https://tylervigen.com/spurious-correlations

% Horizontal and vertical scales. These values must be changed according to the
% example selected by the student.
xmin_data       = 1999;
xmax_data       = 2009;
ymin_data1      = 15;
ymax_data1      = 30;
ymin_data2      = 4E3;
ymax_data2      = 10E3;

% Load image
img = imread('chart.png');
imshow(img);

% Image scale
title('Select a point containing the lowest X value','fontsize',14,'color','red');
[xmin_img,~]    = ginput(1);

title('Select a point containing the highest X value','fontsize',14,'color','red');
[xmax_img,~]    = ginput(1);

title('Select a point containing the lowest Y value','fontsize',14,'color','red');
[~,ymin_img]    = ginput(1);

title('Select a point containing the highest Y value','fontsize',14,'color','red');
[~,ymax_img]    = ginput(1);
 
% Select the points of the first plot
title('Select the points of the first plot. Press <ENTER> to finish');
[xi1,yi1]       = ginput;

% Select the points of the second plot
title('Select the points of the second plot. Press <ENTER> to finish');
[xi2,yi2]       = ginput;
title(' ');
save data;

% Data reescale
xd1             = mapx(xi1, xmin_img, xmax_img, xmin_data,  xmax_data);
yd1             = mapy(yi1, ymin_img, ymax_img, ymin_data1, ymax_data1);
xd2             = mapx(xi2, xmin_img, xmax_img, xmin_data,  xmax_data);
yd2             = mapy(yi2, ymin_img, ymax_img, ymin_data2, ymax_data2);

%% Plot data
ax              = plotyy(xd1,yd1,xd2,yd2,@plot,@plot);
xlabel ("X");
ylabel (ax(1), "US Spending science [Billion $USD]");
ylabel (ax(2), "Hanging suicides [Suicides]"); 
set(get(ax(1),'children'),'marker','o');
set(get(ax(2),'children'),'marker','o');




