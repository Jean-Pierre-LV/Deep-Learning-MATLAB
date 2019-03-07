function [A, activation_cache]=relu(Z)

    A=max(0,Z);
    activation_cache=Z;
    
end