function x = BackSubPBands(U,p,b)
n = length(U);
x = zeros(n,1);
%tic;
for j = n:-1:1
    if U(j,j) == 0 
        return;
    end
    x(j) = b(j)/U(j,j);
    
    start = j-1-p;
    if start < 1
        start = 1;
    end
    
    %for i = start:j-1
    i = start:j-1;
    b(i) = b(i) - (U(i,j)*x(j));
    %end
end
%toc;
end