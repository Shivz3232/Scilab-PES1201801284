function rayleigh(A,U)
    u0 = U';
    disp(u0,'The initial vector');
    v = A*u0;
    a = max(u0);
    disp(a,'First approx.');
    while(abs(max(v)- a) > 0.002 )
        disp(v,"current eigen vector is");
        a = max(v);
        disp(a,"current eigen value is");
        u0 = v/max(v);
        v = A*u0;
    end
    format('v',4);
    disp(max(v),"The largest Eigen value is:");
    format('v',5);
    disp(u0,"Corresponding Eigen Vector");
endfunction
