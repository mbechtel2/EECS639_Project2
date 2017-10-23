function x = GE(A,b)

n = length(A);

Ab = [A,b];

tic;
for k = 1:n-1
    if Ab(k,k) == 0
        return;
    end
    
    i = k+1:n;
    j = k+1:n+1;
    Ab(i,j) = Ab(i,j) - ( Ab(i,k) / Ab(k,k) * Ab(k,j) );
end
toc;

U = Ab(1:n,1:n);
b2 = Ab(:,n+1);

x = BackSub(U,b2);

end