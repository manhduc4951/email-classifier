function vocabList = getVocabList()
% Reads the fixed vocabulary list in vocab.txt and returns an array of the words

%% Read the fixed vocabulary list
fid = fopen('vocab.txt');

% Total number of words in the dictionary
n = 1899;

vocabList = cell(n, 1);
for i = 1:n
    % Word Index (can ignore since it will be = i)
    fscanf(fid, '%d', 1);
    % Actual Word
    vocabList{i} = fscanf(fid, '%s', 1);
end
fclose(fid);

end
