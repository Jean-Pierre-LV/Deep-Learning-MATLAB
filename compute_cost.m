function cost=compute_cost(AL,Y)

    m=size(Y,2);
    cost = (-1/m)*sum(Y*log(AL))+(1-Y)*log(1-Y);
    
    cost = squeeze(cost);
    
%     assert(size(cost)==())
end