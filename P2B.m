[A, rows, cols, entries] = mmread('sherman1.mtx');
fprintf("Size of matrix: %i x %i\n", rows, cols);
b = rand(rows,1);
x = GE(A,b);
fprintf("Residual norm = %e\n\n",norm(b-A*x));

[A, rows, cols, entries] = mmread('sherman3.mtx');
fprintf("Size of matrix: %i x %i\n", rows, cols);
b = rand(rows,1);
x = LU(A,b);
fprintf("Residual norm = %e\n\n",norm(b-A*x));

[A, rows, cols, entries] = mmread('bcsstk17.mtx');
fprintf("Size of matrix: %i x %i\n", rows, cols);
b = rand(rows,1);
x = CF(A,b);
fprintf("Residual norm = %e\n\n",norm(b-A*x));

if 0
[A, rows, cols, entries] = mmread('s1rmq4m1.mtx');
fprintf("Size of matrix: %i x %i\n", rows, cols);
b = rand(rows,1);
x = LU(A,b);
fprintf("Residual norm = %e\n\n",norm(b-A*x));

%if 0
[A, rows, cols, entries] = mmread('sherman3.mtx');
b = rand(rows,1);
x = GE(A,b);
norm(b-A*x)
end