function x = BackSubMBlocks(U,m,b)
n = length(U);

if mod(n,m) ~= 0
    error ('m does not evenly divide n');
end

x = zeros(n,1);
m2 = m-1;

for i = n:-m:1
    x(i-m2:i) = GE(U(i-m2:i,i-m2:i),b(i-m2:i));
    for j = 1:m:i
        M = U(j:j+m2,i-m2:i);
        b(j:j+m2) = b(j:j+m2) - (M * x(i-m2:i));
    end
end

end