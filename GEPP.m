function x = GEPP(A,b)
n = length(A);
Ab = [A b];
tic;
for j = 1:n-1%columns 
    max = 0;
    index  = 0;
    for i=j:n%rows
        if abs(Ab(i,j))>max
            max=abs(Ab(i,j));
            index = i;
        end
    end
     %if max is not the current pivot change rows
    if j~=index
        curRow = Ab(j,:);
        Ab(j,:) = Ab(index,:);
        Ab(index,:)=curRow;
    end
    if Ab(j,j) == 0
        return;
    end
    
    i = j+1:n;
    k = j+1:n+1;
    Ab(i,k) = Ab(i,k) - ( Ab(i,j) / Ab(j,j) * Ab(j,k) );
end
toc;
U = Ab(1:n,1:n);
b2 = Ab(:,n+1);

x = BackSub(U,b2);
end

