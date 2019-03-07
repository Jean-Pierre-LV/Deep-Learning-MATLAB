function [Z,cache]=linear_forward(A,W,b)

    Z=W*A+b;
    
%     assert(size(Z)==[size(W,1) size(A,2)])
    cache={A W b};
end