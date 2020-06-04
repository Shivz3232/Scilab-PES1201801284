function eigen(A)
    lam = poly(0,'lam')
    lam = lam
    matrix = A - lam*eye(3,3)
    disp(matrix,"Characteristic Matrix:")
    polynomial=poly(A,'lam')
    disp(polynomial,"Characteristic Polyomial:")
    lam=spec(A)
    disp(lam,"The Eigen Values:")
    [n,m] = size(A)
    x = []
    for k = 1:3
        B = A - lam(k)*eye(3,3);
        C = B(1:n-1,1:n-1);
        b = -B(1:n-1,n);
        y = C\b;
        y = [y;1];
        y = y/norm(y);
        x = [x y];
    end
    disp(x,"The Eigen Vectors:");
endfunction
