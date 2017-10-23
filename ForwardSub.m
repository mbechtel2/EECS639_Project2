function x = ForwardSub(A,b)

rows =size(A,1);
x=zeros(rows,1);

tic;
for i=1:rows %rows
    if(A(i,i) ==0)
        break
    end
    
    j=1:i-1;
    b(i) = b(i) - (A(i,j)*x(j));
    x(i) = b(i)/A(i,i);
   
end
toc;
end

