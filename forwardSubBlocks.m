function x = forwardSubBlocks(A,b,blockSize)


rows =size(A,1);
x=zeros(rows,1);
m=blockSize-1;
for i=1:blockSize:rows %rows
    for j=1:blockSize:(i-1) %columns
       subA = A(i:i+m, j:j+m);
       b(i:(i+m)) = b(i:(i+m)) - (subA*x(j:j+m));
    end                                                                                                                                                                                                                                                          
   
   x(i:(i+m)) = GE(A(i:i+m,i:i+m),b(i:(i+m)));
   


end

