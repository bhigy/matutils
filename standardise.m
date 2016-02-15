function S = standardise(M, dim)
% Standardize matrix M along dimension dim

    if ~exist('dim', 'var') || isempty(dim)
        dim = 1;
    end
    
    m = mean(M, dim);
    s = std(M, [], dim);
    s(s == 0) = 1; % avoid dividing by 0
    repDim = [1, 1];
    repDim(dim) = size(M, dim);
    m = repmat(m, repDim);
    s = repmat(s, repDim);
    S = (M - m) ./ s;
    
end