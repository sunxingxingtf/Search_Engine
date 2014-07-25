function NormWeight(d,norm)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    nd=[];
    N=6763;
    for i=1:N
        if norm(i)~=0
            nd(:,i)=d(:,i)./norm(i);
        end
    end
    dlmwrite('NormWeightMatrix26.txt',nd,'delimiter',' ','newline','pc');
end

