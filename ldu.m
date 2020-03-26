function [L, D, U] = ldu(A)
    A = input("\nEnter the matrix A:\n")

    temp = lu(A);

    n = size(A)(1);
    
    L = D = U = zeros(n, n);

    for i = 1:n
        for j = 1:i
            if (i != j)
                L(i, j) = temp(i, j);
            else
                L(i, j) = 1;
            endif
        end
    end

    L

    for i = 1:n
        D(i, i) = temp(i, i);
    end

    D
    
    for i = 1:n
        for j = i:n
            if (i != j)
                U(i, j) = temp(i, j);
            else
                U(i, j) = 1;
            endif
        end
    end

    U

endfunction