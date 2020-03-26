function colmnSpace = columnSpace(A)
    
    A = input ("\nEnter the matrix A:\n");

    n = length(A);

    for j = 1:n-1
        for i = j+1:n
            A(i, j:n) = A(i, j:n) - (A(i, j) / A(j, j)) * A(j, j:n);
        end
    end

    colmnSpace = [];

    for i = 1:n
        if A(i, i) != 0
            colmnSpace = [colmnSpace A(:, i)];
        end
    end

    printf("\nThe column space in the spanned by the set of vectors:\n")
    disp(colmnSpace);

endfunction