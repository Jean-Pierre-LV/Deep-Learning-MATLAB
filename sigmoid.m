function [A, activation_cache]=sigmoid(Z)

    A=1./(1+exp(-Z));
    activation_cache=Z;
    
end