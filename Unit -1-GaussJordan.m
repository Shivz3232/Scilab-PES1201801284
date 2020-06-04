function inverse = GaussJordan(A)
    A = input("\nEnter the matrix A:\n");
    n = length(A);
    aug = [A eye(n)];
    
    for j = 1:n-1
        for i = j+1:n
            aug(i, j:2*n) = aug(i, j:2*n) - (aug(i, j) / aug(j, j)) * aug(j, j:2*n);
        end
    end

    for j = n:-1:2
        aug(1:j-1, :) = aug(1:j-1, :) - (aug(1:j-1, j) / aug(j, j)) * aug(j, :);
    end

    for j = 1:n
        aug(j, :) = aug(j, :) / aug(j, j);
    end

    inverse = aug(:, n+1: 2*n)
end
