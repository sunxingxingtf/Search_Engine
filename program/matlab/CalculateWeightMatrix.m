function CalculateWeightMatrix(A,B)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    A=dlmread('matrix1.txt');
    B=dlmread('matrix2.txt');
    dft=[];
    result=[];
    N=size(A,2);
    M=size(A,1);
    WeightMatrix=[];
    dft=sum(B,2);
    for i=1:M
        for j=1:N
            if A(i,j)~=0 result(i,j)=(1+log10(A(i,j)))*log10(N/dft(i,:));
            else result(i,j)=0;
            end
        end
    end
    WeightMatrix=result;
    dlmwrite('result.txt',WeightMatrix,'delimiter',' ','newline','pc');
end

