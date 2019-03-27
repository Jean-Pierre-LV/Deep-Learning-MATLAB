function cost=compute_cost(AL,Y)

    m=size(Y,2);
    cost = (-1/m)*sum(Y.*log(AL)+(1-Y).*log(1-AL));
    
    cost = squeeze(cost);
    
    assert1 = isequal(size(cost),([1 1]));
    if assert1 == 0
        error('Error of dimensions on compute_cost')
    end
end