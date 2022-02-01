function [ e  ] = cost( C,L,y,FV)
yhat= calc(C,L);
yhat=yhat*diag(FV);
e=y-yhat;
e=dot(e,e)
end
