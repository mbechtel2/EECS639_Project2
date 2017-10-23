function x = BackSub(U,b)
n = length(U);
x = zeros(n,1);
%tic;
for j = n:-1:1
    if U(j,j) == 0 
        return;
    end
    x(j) = b(j)/U(j,j);
    i = 1:j-1;
    b(i) = b(i) - (U(i,j)*x(j));
end
%toc;
end