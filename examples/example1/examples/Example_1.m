
% requires


% data
[X,Y,Z] = peaks;
% data variables
xmin = -3;
xmax = 3;
ymin = -3;
ymax = 3;
zmin = -6.5466;
zmax = 8.0752;
myxlabel = '$x$'; % x label with latex
myylabel = '$y$'; % y label with latex
mylegend = ''; % legend with latex
mytitle = 'Peaks'; % title with latex
% plot variables
fwidth = 550; % figure width in pixels
fheight = 400; % figure height in pixels
fontlabel = 20; % x,y label font size
fontlegend = 12; % x,y legend font size
fonttick = 12; % x,y rick font size
mycolor1 = [0.8500 0.3250 0.0980]; % custom color 1
mycolor2 = [0.4940 0.1840 0.5560]; % custom color 2
wcolor = [1 1 1]; % white color
bcolor = [0 0 0]; % black color

%% pre tasks
set(0,'DefaultTextInterpreter','latex'); % change the text interpreter
set(0,'DefaultLegendInterpreter','latex'); % change the legend interpreter
set(0,'DefaultAxesTickLabelInterpreter','latex'); % change the tick interpreter
hf = figure; % create a new figure and save handle
hf.Color = wcolor; % change the figure background color
hf.Position = [200 200 fwidth fheight]; % set figure size and position

%% plot the data
hp = surf(X,Y,Z);
axis('tight')

%% post tasks
xlabel(myxlabel) % create x label
ylabel(myylabel) % create y label
xlim([xmin xmax]) % change x limits
ylim([ymin ymax]) % change y limits
zlim([zmin zmax]) % change z limits
ha = gca; % get current axis handle
ha.XAxis.Color = bcolor; % change the x axis color to black (not a dark grey)
ha.YAxis.Color = bcolor; % change the y axis color to black (not a dark grey)
ha.ZAxis.Color = bcolor; % change the y axis color to black (not a dark grey)
ha.XAxis.FontSize = fonttick; % change x tick font size
ha.YAxis.FontSize = fonttick; % change y tick font size
ha.ZAxis.FontSize = fonttick; % change y tick font size
ha.XAxis.Label.FontSize = fontlabel; % change x label font size
ha.YAxis.Label.FontSize = fontlabel; % change y label font size
ha.ZAxis.Label.FontSize = fontlabel; % change y label font size
ha.Layer = 'top'; % place the axes on top of the data

ht = title(mytitle);
ht.FontSize = fontlabel;

% save the figure using exportfig
ExportFigSave(mfilename('fullpath'));