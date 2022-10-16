function createfigure(YMatrix1)
%CREATEFIGURE(YMatrix1)
%  YMATRIX1:  y 数据的矩阵

%  由 MATLAB 于 30-Oct-2021 21:26:36 自动生成

% 创建 figure
figure1 = figure;

% 创建 axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% 使用 plot 的矩阵输入创建多行
plot(YMatrix1,'Parent',axes1);

% 取消以下行的注释以保留坐标区的 X 范围
% xlim(axes1,[0.573087600735774 5.41308760073578]);
% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(axes1,[-6.15522347740161 42.2447765225984]);
box(axes1,'on');
hold(axes1,'off');
% 设置其余坐标区属性
set(axes1,'XTick',[0 1 2 3 4 5 6],'XTickLabel',...
    {' ','低','较低','中','较高','高',' '});
