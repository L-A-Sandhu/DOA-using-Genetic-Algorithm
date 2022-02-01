clc
clear all
Nsensor=5; % number of sensor
FV=[1 1 0 0 1];
val=pi/180;
Target=[2 80 4 40];
y=calc(Target,Nsensor);
E1=cost(Target,Nsensor,y,FV);
Evac=[];
% step 1  Genrate a matrix C i.e the first chromosome matrix of 10 rows and
% 8 columns
%%
Row= 220; % number of chromosomes 
RC= 220;
Column=4;% number of genes in each chromosome
C=rand(Row,Column);  
C(:,1)=5*(C(:,1)); C(:,2)=180*(C(:,2));C(:,3)=5*(C(:,3));C(:,4)=180*(C(:,4));
e=[];count=0;
pt=1;
for i=1:Row
      e(i)=cost(C(i,:),Nsensor,y,FV);
end

%%
count=0;
while (min(e)>10^-9 && count<1000)
[de,idx]=sort(e); %% de contains error in desending order and idx contains the index of the corresponding error
for i=1:Row
    Csorted(i,:)=C(idx(i),:);
end
% IF we have just used best two cromosome and genrate  new 10 from only first two use this
P1=Csorted(1,:);
 P2=Csorted(2,:);
val = 3;    
if (sum (abs((P1-P2)))==0)
        while( sum(abs((P1-P2)))==0 &&  val<=10)
            P2=Csorted(val,:);
            val=val+1;
        end
 if val>10
     
            P2=rand(1,Column);
          P2(:,1)=5*(P2(:,1)); P2(:,2)=180*(P2(:,2));P2(:,3)=5*(P2(:,3));P2(:,4)=180*(P2(:,4))
 end
      
end
  PPP=[P1;P2];
    
offspring=children(P1,P2,RC);
C=offspring;
pt=1;

for i=1:Row
      e(i)=cost(C(i,:),Nsensor,y,FV);
end
count=count+1;
Evac=[Evac;min(e)];
plot(1:length(Evac),Evac);
pause(0.000000000000001);
end % while end
Error=min(e);    
[de,idx]=sort(e);
OW=C(idx(1),:);
Itrations=count;
%%
%test
for l=1:100
    k=randi(8);
    ee(l)=cost(OW,X(k,:));
end

stem(ee);   
