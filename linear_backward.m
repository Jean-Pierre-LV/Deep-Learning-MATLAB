function [dA_prev, dW, db]=linear_backward(dZ, cache)

    A_prev = cache{1};
    W = cache{2};
%     b = cache{3};
    
    m = size(A_prev,2);
    
    dW = (1/m)*(dZ'*(A_prev)');%change dZ to dZ'
    db = (1/m)*squeeze(sum(dZ'));%change dZ to dZ'
    dA_prev = W'*dZ';%change dZ to dZ'
    
%     assert(size(dA_prev) == size(A_prev))
%     assert(size(dW) == size(W))
%     assert(isa(db,'float'))
end
