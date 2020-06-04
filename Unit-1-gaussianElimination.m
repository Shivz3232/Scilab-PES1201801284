function [x] = gaussianElimination(A, B)
    
    A = input ("\nEnter the matrix A:\n");
    B = input ("\nEnter the column matrix B:\n");

    n = length(B);

    aug = [A B];

    for j = 1:n-1
        for i = j+1:n
            aug(i, j:n+1) = aug(i, j:n+1) - (aug(i, j) / aug(j, j)) * aug(j, j:n+1);
        end
    end

    x = zeros(n ,1);
    x(n) = aug(n, n+1) / aug(n, n);

    for i = n-1 : -1 : 1
        x(i) = (aug(i, n + 1) - aug(i, i+1:n) * x(i+1:n)) / aug(i, i);
    end

    printf("\nThe x matrix is:\n")
    disp(x);

endfunction
