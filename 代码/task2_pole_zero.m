% 任务2：根据闭环极点在S平面上的位置判断系统稳定性
clc;
clear;

%% (1) G(s)=50/[s(s+1)(s+2)]
num1=[50];
den1=conv(conv([1 0],[1 1]),[1 2]);  %开环分母
den_cl1=den1+[0 0 0 num1];            %闭环特征方程: D(s)+N(s)
[z1 p1 k1]=tf2zp(num1,den_cl1);      %求闭环零极点
sys1=tf(num1,den_cl1);
pzmap(sys1);                         %绘制零极点图
title('G(s)=50/[s(s+1)(s+2)]的零极点图');
p1
if all(real(p1)<0), disp('系统稳定'), else disp('系统不稳定'), end

%% (2) G(s)=0.2(s+2)/[s(s+0.5)(s+0.8)(s+3)]
num2=0.2*[1 2];
den2=conv(conv(conv([1 0],[1 0.5]),[1 0.8]),[1 3]);  %开环分母
den_cl2=den2+[zeros(1,length(den2)-length(num2)),num2]; %闭环特征方程
[z2 p2 k2]=tf2zp(num2,den_cl2);      %求闭环零极点
sys2=tf(num2,den_cl2);
figure;pzmap(sys2);                  %绘制零极点图
title('G(s)=0.2(s+2)/[s(s+0.5)(s+0.8)(s+3)]的零极点图');
p2
z2
if all(real(p2)<0), disp('系统稳定'), else disp('系统不稳定'), end
if all(real(z2)<0), disp('最小相位系统'), else disp('非最小相位系统'), end
