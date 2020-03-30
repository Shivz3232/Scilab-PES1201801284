function spaces = fundamentalSpaces(A)

    warning("off");
    
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

    n = size(A)(1);

    T = normalize(A);

    for j = 1:n-1
        for i = j+1:n
            T(i, j:n) = T(i, j:n) - (T(i, j) / T(j, j)) * T(j, j:n);
        end
    end

    count = 0;

    colmnSpace = [];

    for i = 1:n
        if T(i, i) != 0
            count = count + 1;
            colmnSpace = [colmnSpace A(:, i)];
        end
    end

    disp("The column sapce is:\n");
    disp(colmnSpace);

    T = normalize(A');

    for j = 1:n-1
        for i = j+1:n
            T(i, j:n) = T(i, j:n) - (T(i, j) / T(j, j)) * T(j, j:n);
        end
    end

    rowSpace = [];

    for i = 1:n
        if T(i, i) != 0
            count = count + 1;
            rowSpace = [rowSpace A'(:, i)];
        end
    end

    disp("The row sapce is:\n");
    disp(rowSpace);

    nullSpace = [];
    aug = [normalize(A) zeros(n, 1)];
    x = zeros(n, 1);

    for j = 1:n-1
        for i = j+1:n
            aug(i, j:n+1) = aug(i, j:n+1) - (aug(i, j) / aug(j, j)) * aug(j, j:n+1);
        end
    end

    for i = n-1 : -1 : 1
        x(i) = (aug(i, n + 1) - aug(i, i+1:n) * x(i+1:n)) / aug(i, i);
    end

    disp("The nullSapce is:\n");
    disp(x);

    leftNullSpace = [];
    aug = [normalize(A') zeros(n, 1)];
    x = zeros(n, 1);

    for j = 1:n-1
        for i = j+1:n
            aug(i, j:n+1) = aug(i, j:n+1) - (aug(i, j) / aug(j, j)) * aug(j, j:n+1);
        end
    end

    for i = n-1 : -1 : 1
        x(i) = (aug(i, n + 1) - aug(i, i+1:n) * x(i+1:n)) / aug(i, i);
    end

    disp("The leftNullSapce is:\n");
    disp(x);

    warning("on");

endfunction