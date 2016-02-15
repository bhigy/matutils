function line = extractLine(vector, pos)
% EXTRACTLINE Extracts a line from a vector of cell arrays

    line = cell(1, length(vector));
    for i_col = 1:length(vector)
        col = vector{i_col};
        if iscell(col)
            line{i_col} = col{pos};
        else
            line{i_col} = col(pos);
        end
    end

end
