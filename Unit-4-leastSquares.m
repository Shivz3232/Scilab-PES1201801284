function X = leastSquares(b, t)
    b = input("\nEnter the output matrix:\n");
    t = input("\nEnter the input matrix:\n");

    A = [ones(size(t)(1), 1) t];

    params = (pinv(A' * A)) * A' * b;

    printf("\nThe C value is: %d\nThe D value is: %d\n", params(1, 1), params(2, 1));
end
