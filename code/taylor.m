function [t,y]=TAYLOR(f,ft,fy,t0,y0,T,p)
h=T/p;
t=zeros(p+1,1);
y=zeros(p+1,1);
t(1)=t0;
y(1)=y0;
for k=2:1:p+1
  t(k)=t(k-1)+h;
  y(k)=y(k-1)+h*f(t(k-1),y(k-1))+(ft(t(k-1),y(k-1))+fy(t(k-1),y(k-1))*f(t(k-1),y(k-1)))*h^2/2;
endfor;
plot(t,y,'*');
