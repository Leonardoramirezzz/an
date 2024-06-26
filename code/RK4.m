function [t,y]=RK4(f,t0,y0,T,p)
h=T/p;
t=zeros(p+1,1);
y=zeros(p+1,1);
t(1)=t0;
y(1)=y0;
for k=2:1:p+1
  t(k)=t(k-1)+h;
  k1=h*f(t(k-1),y(k-1));
  k2=h*f(t(k-1)+h/2,y(k-1)+k1/2);
  k3=h*f(t(k-1)+h/2,y(k-1)+k2/2);
  k4=h*f(t(k-1)+h,y(k-1)+k3);
  y(k)=y(k-1)+k1/6+2*k2/6+2*k3/6+k4/6;
endfor
plot(t,y,'*');
