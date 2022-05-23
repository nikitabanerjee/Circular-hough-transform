clear all;
close all;
r=2;
t=0:pi/20:2*pi;
x=r*cos(t)+5;
y=r*sin(t)+5;
figure,plot(x,y,'black');
txt='2)Radius greater than actual';
text(2,9.5,txt,'FontSize',14)
pause(0.000001);
frame_h=get(handle(gcf),'JavaFrame');
set(frame_h,'maximized',1);
axis([0,10,0,10]);
axis square;
pause(1);
hold on;
r=3;
for i=1:40
    x3=r*cos(t)+x(i);
    y3=r*sin(t)+y(i);
    plot(x3,y3,'black');
    [a,b]=circcirc(5,5,2,x(i),y(i),3);
    if i>1
        for j=i:-1:1
            [d,e]=circcirc(x(i),y(i),3,x(j),y(j),3);
            plot(d,e,'LineStyle','none','Marker','o','MarkerEdgeColor','blue','MarkerFaceColor','blue')
            j=j-1;
        end
    end
    axis square
    hold on;
    pause(0.1);
    i=i+1;
end
    
