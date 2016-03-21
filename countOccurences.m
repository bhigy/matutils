function O = countOccurences(X)
    U = unique(X);
    if iscellstr(X)
        O = arrayfun(@(x) sum(strcmp(x, X)), U);
    else
        O = arrayfun(@(x) sum(X==x), U);
    end
end