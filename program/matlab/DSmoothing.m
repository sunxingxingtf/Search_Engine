function DSmoothing()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    id=0;
    Ld=dlmread('F:\IR\data\Ld.txt');
    a=0.2; %
    dft=[];
    N=26298;%row
    M=6763;%column
    result=zeros(1000,M);
    Lave=0;
    A=zeros(1000,M);
    B=zeros(1000,M);
    dft=[];
    s=sum(Ld(:,2)');
    Lave=s/M;
    A=dlmread('F:\IR\data\matrixA26.txt');
    B=dlmread('F:\IR\data\matrixB26.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result26.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA25.txt');
    B=dlmread('F:\IR\data\matrixB25.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result25.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA24.txt');
    B=dlmread('F:\IR\data\matrixB24.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result24.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA23.txt');
    B=dlmread('F:\IR\data\matrixB23.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result23.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA22.txt');
    B=dlmread('F:\IR\data\matrixB22.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result22.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA21.txt');
    B=dlmread('F:\IR\data\matrixB21.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result21.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA20.txt');
    B=dlmread('F:\IR\data\matrixB20.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result20.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA19.txt');
    B=dlmread('F:\IR\data\matrixB19.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result19.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA18.txt');
    B=dlmread('F:\IR\data\matrixB18.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result18.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA17.txt');
    B=dlmread('F:\IR\data\matrixB17.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result17.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA16.txt');
    B=dlmread('F:\IR\data\matrixB16.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result16.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA15.txt');
    B=dlmread('F:\IR\data\matrixB15.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result15.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA14.txt');
    B=dlmread('F:\IR\data\matrixB14.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result14.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA13.txt');
    B=dlmread('F:\IR\data\matrixB13.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result13.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA12.txt');
    B=dlmread('F:\IR\data\matrixB12.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result12.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA11.txt');
    B=dlmread('F:\IR\data\matrixB11.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result11.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA10.txt');
    B=dlmread('F:\IR\data\matrixB10.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result10.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA9.txt');
    B=dlmread('F:\IR\data\matrixB9.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result9.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA8.txt');
    B=dlmread('F:\IR\data\matrixB8.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result8.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA7.txt');
    B=dlmread('F:\IR\data\matrixB7.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result7.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA6.txt');
    B=dlmread('F:\IR\data\matrixB6.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result6.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA5.txt');
    B=dlmread('F:\IR\data\matrixB5.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result5.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA4.txt');
    B=dlmread('F:\IR\data\matrixB4.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result4.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA3.txt');
    B=dlmread('F:\IR\data\matrixB3.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result3.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA2.txt');
    B=dlmread('F:\IR\data\matrixB2.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result2.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA1.txt');
    B=dlmread('F:\IR\data\matrixB1.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result1.txt',result,'delimiter',' ','newline','pc');
    A=dlmread('F:\IR\data\matrixA0.txt');
    B=dlmread('F:\IR\data\matrixB0.txt'); %binary
    dft=sum(B,2);
    for i=1:size(A,1)
        result(i,:)=(A(i,:)+a*sum(A(i,:))/s)./(Ld(i,2)+a);
    end
    dlmwrite('F:\IR\data\DSresult\result0.txt',result,'delimiter',' ','newline','pc');
  