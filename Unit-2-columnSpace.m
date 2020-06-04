function colmnSpace = columnSpace(A)

    function T = normalize(T)
        for j = 1:n-1
            if (T(j, j) == 0 && j != 3)
                if (T(j+1, j) != 0)
                    X = T(j, :);
                    T(j, :) = T(j+1, :);
                    T(j+1, :) = X;
    
                elseif (j != 2 && T(j+2, j) != 0)
                    X = T(j, :);
                    T(j, :) = T(j+2, :);
                    T(j+2, :) = X;
                end
            end
        end
    endfunction
    
    A = input ("\nEnter the matrix A:\n");

    n = length(A);

    T = normalize(A);
    
    for j = 1:n-1
        for i = j+1:n
            T(i, j:n) = T(i, j:n) - (T(i, j) / T(j, j)) * T(j, j:n);
        end
    end

    colmnSpace = [];

    for i = 1:n
        if T(i, i) != 0
            colmnSpace = [colmnSpace T(:, i)];
        end
    end

    printf("\nThe column space in the spanned by the set of vectors:\n")
    disp(colmnSpace);

endfunction
