function [Z,cache]=linear_forward(A,W,b)

    Z=W*A+b;
    
    assert1 = isequal(size(Z),[size(W,1) size(A,2)]);
    if assert1 == 0
        error('Error of dimensions on linear_forward')
    end
    cache={A W b};
end