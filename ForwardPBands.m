function x = ForwardPBands(A,b,bands)

rows =size(A,1);
x=zeros(rows,1); 
for i=1:rows %rows
    if(A(i,i)==0)
        break
    end
    start = i-(bands-1); 
    if(start < 1)
        start = 1;
    end
    for j=start:(i-1) %columns
     b(i) = b(i) - (x(j)*A(i,j));
    end                                                                                                                                                                                                                                                          
   
   x(i) = b(i)/A(i,i);
   
end





