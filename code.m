clear
clc
load odev-1.mat
close all
x1 = X(1:50,3:4);
x2 = X(51:100,3:4);
x3 = X(101:150,3:4);
uzay = zeros (500);

i_inx = linspace(0,2.5,500);
j_inx = linspace(1,7,500);

%%   1.***********************************************************
S1 = cov(x1);
S2 = cov(x2);
S3 = cov(x3);

m1 = mean (x1)';
m2 = mean (x2)';
m3 = mean (x3)';

%%    2.*************************************************************************
w21 = (inv(S1)-inv(S2));
w11 = (inv(S1)*m1-inv(S2)*m2);
w01 = -1/2*(m1'*inv(S1)*m1-m2'*inv(S2)*m2+log(det(S1))-log(det(S2)));

w22 = (inv(S2)-inv(S3));
w12 = (inv(S2)*m2-inv(S3)*m3);
w02 = -1/2*(m2'*inv(S2)*m2-m3'*inv(S3)*m3+log(det(S2))-log(det(S3)));

w23 = (inv(S1)-inv(S3));
w13 = (inv(S1)*m1-inv(S3)*m3);
w03 = -1/2*(m1'*inv(S1)*m1-m3'*inv(S3)*m3+log(det(S1))-log(det(S3)));

S11 = inv(S1) ;
S22 = inv(S2);
S33 = inv(S3); 
for i=1:500
 
  for j=1:500
  x=[j_inx(j);i_inx(i)];
  C1=-0.5*(x'*w21*x)+x'*w11+w01;
  C2=-0.5*(x'*w22*x)+x'*w12+w02;
  C3=-0.5*(x'*w23*x)+x'*w13+w03;
  
     if(and(C1 > 0,C3>0))    
         uzay(i,j)=1;    
     elseif(and(C1<0,C2>0))
         uzay(i,j)=2;
     elseif(and(C2<0,C3<0))
          uzay(i,j)=3;
     end
  end 
    
end
figure('Name','Kovaryans Matrisler Eþit Deðil');
plot(x1(:,1),x1(:,2),'pr')  
hold on
plot(x2(:,1),x2(:,2),'ob') 
hold on
plot(x3(:,1),x3(:,2),'og') 
hold on
contour(j_inx,i_inx,uzay)
legend({'setosa','versicolor','virginica'},'Location','southeast')
%% 3  *************************************************************
uzay = zeros (500);
S=1/3*(S1+S2+S3);
w11 = (inv(S)*(m1-m2));
w01 = -1/2*(m1'*inv(S)*m1-m2'*inv(S)*m2);

w12 = (inv(S)*(m2-m3));
w02 = -1/2*(m2'*inv(S)*m2-m3'*inv(S)*m3);

w13 = (inv(S)*(m1-m3));
w03 = -1/2*(m1'*inv(S)*m1-m3'*inv(S)*m3);
for i=1:500
 
  for j=1:500
  x=[j_inx(j);i_inx(i)];
  C1=x'*w11+w01;
  C2=x'*w12+w02;
  C3=w13+w03;
  
     if(and(C1 > 0,C3>0))    
         uzay(i,j)=1;    
     elseif(and(C1<0,C2>0))
         uzay(i,j)=2;
     elseif(and(C2<0,C3<0))
          uzay(i,j)=3;
     end
  end 
    
end
figure('Name','Kovaryans Matrisler Eþit');
plot(x1(:,1),x1(:,2),'pr')  
hold on
plot(x2(:,1),x2(:,2),'ob') 
hold on
plot(x3(:,1),x3(:,2),'og') 
hold on
contour(j_inx,i_inx,uzay)
legend({'setosa','versicolor','virginica'},'Location','southeast')


