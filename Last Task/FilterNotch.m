function [filterd_img] = FilterNotch(I)

[l,w,c]=size(I);
h=ones(l,w,c);

%raidus size 
d0=10;
d0_=5;

%point1
u0=0;
v0=-56;

%point2
u1=0;
v1=-130;

%point3
u2=0;
v2=-195;

%point4
u3=10;
v3=0;

%point5
u4 = 0;
v4 = 100;




d1x=w/2+u0;
d1y=l/2+v0;
d2x=w/2-u0;
d2y=l/2-v0;
d3x=w/2+u1;
d3y=l/2+v1;
d4x=w/2-u1;
d4y=l/2-v1;
d5x=w/2+u2;
d5y=l/2+v2;
d6x=w/2-u2;
d6y=l/2-v2;
d7x=w/2+u3;
d7y=l/2+v3;
d8x=w/2-u3;
d8y=l/2-v3;

d9x=w/2+u4;
d9y=l/2+v4;
d10x=w/2-u4;
d10y=l/2-v4;

for i=1:w
    for j=1:l
        d1=sqrt((i-d1x).^2+(j-d1y).^2);
        d2=sqrt((i-d2x).^2+(j-d2y).^2);
        d3=sqrt((i-d3x).^2+(j-d3y).^2);
        d4=sqrt((i-d4x).^2+(j-d4y).^2);
        d5=sqrt((i-d5x).^2+(j-d5y).^2);
        d6=sqrt((i-d6x).^2+(j-d6y).^2);
        d7=sqrt((i-d7x).^2+(j-d7y).^2);
        d8=sqrt((i-d8x).^2+(j-d8y).^2);
        
        d9=sqrt((i-d9x).^2+(j-d9y).^2);
        d10=sqrt((i-d10x).^2+(j-d10y).^2);
        
        if (d1>d0  && d2> d0 && d3>d0  && d4> d0 && d5>d0  && d6> d0 && d7>d0_  && d8> d0_ &&  d9>d0_  && d10> d0_)
            h(i,j,:)=1;
        else
            h(i,j,:)=0;
        end
    end
end
filterd_img = h;
