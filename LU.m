function x = LU(A,b)
n = length(A);
L = eye(n);
tic;
for k=1:n-1
    if A(k,k) == 0 
        return;
    end
    
    i = k+1:n;
    j = k+1:n;
    L(i,k)=A(i,k)/A(k,k);
    A(i,k) = L(i,k);
    A(i,j) = A(i,j) - (A(i,k) * A(k,j));
end
toc;
y = ForwardSub(L,b);
x = BackSub(A,y);
end