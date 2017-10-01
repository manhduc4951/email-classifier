function x = emailFeatures(word_indices)
% Takes in a word_indices vector and produces a feature vector from the word indices

% Total number of words in the dictionary
n = 1899;

% For example:
% Email: The quick brown fox jumped over the lazy dog.
% The word_indices vector: 60  100   33   44   10     53  60  58   5 
% Feature vector x: [ 0 0 0 0 1 0 0 0 ... 0 0 0 0 1 ... 0 0 0 1 0 ..]
x = zeros(n, 1);

for i=1:size(word_indices)
    x(word_indices(i)) = 1;
end

% =========================================================================   

end
