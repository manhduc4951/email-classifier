function sim = gaussianKernel(x1, x2, sigma)
% Returns a gaussian kernel between x1 and x2

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

sim = 0;

sim = e^(-sum((x1-x2) .^ 2) / ((sigma^2)*2))

% =============================================================
    
end
