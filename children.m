 function [ offspring ] = children(P1, P2 , RC )
% P1 is parent 1 
% P2 is parent 2 
% RC is the required number of chromosomes 
%k=6; % number of genes we want to  swap for each new chromosome
Col=length(P1);
offspring=[P1];
for i=2:RC+1
    chk=mod(i,2);
    if chk ==0
        offspring=[offspring;P2];
    else if chk ==1
            offspring=[offspring;P1];
        end
    end

end
for i=3:RC
 k=randi(3); % random number of genes in each parent change   
for j=1:k
Rn=randi(Col);% This will genrate a random number and that specific chromosome will 
offspring(i,Rn)=offspring(i+1,Rn);% swap the value of ith rown and Rnth column with i+1 th rown and same coulmn value
end
end
offspring=offspring(1:RC,:);
end

