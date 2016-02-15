function VV = eraseCells(V , selection)
% Erase cells from all arrays of a vector of cell arrays

    VV = V;
    for i = 1:size(V, 2)
        VV{:, i}(selection) = [];
    end

end

