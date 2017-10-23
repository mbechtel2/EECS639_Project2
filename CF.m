function x = CF(A,b)
n = length(A);
tic;
for k = 1:n
    A(k,k) = sqrt(A(k,k));
    i = k+1:n;
    A(i,k) = A(i,k) / A(k,k);
    for j = k+1:n  
        A(j:n,j) = A(j:n,j) - (A(j,k) * A(j:n,k));
    end
end
toc;

y = ForwardSub(A,b);
x = BackSub(A',y);
end