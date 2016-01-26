function VV = eraseCells(V , line_numbers)
% Erase cells from all arrays of a vector of cell arrays

    VV = V;
    for i = 1:size(V, 2)
        VV{:, i}(line_numbers) = [];
    end

end

