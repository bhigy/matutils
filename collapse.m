function C = collapse(cellArray, dim)
% COLLAPSE append the matrices in the cell array to one-another
%
% C = collapse(D)
% Concatenate all the matrices together.
%
% C = collapse(D, dim)
% Concatenate together the matrices along dimension dim

    if ~exist('dim', 'var')
        dim = [];
    end
    
    nbCols = size(cellArray{1, 1}, 2);
    nbLines = countLines(cellArray);
    
    % Collapsing rows
    if isempty(dim) || dim == 1
        collapsed = cell(1, size(cellArray, 2));
        totLines = sum(nbLines, 1);
        for j = 1:size(cellArray, 2)
            collapsed{1, j} = zeros(totLines(j), nbCols);
            first = 1;
            for i = 1:size(cellArray, 1)
                last =  first + size(cellArray{i, j}, 1) - 1;
                collapsed{1, j}(first:last, :) = cellArray{i, j};
                first = last + 1;
            end
        end
        C = collapsed;
    else
        C = cellArray;
    end
    
    % Collapsing columns
    if isempty(dim) || dim == 2
        collapsed = cell(1, size(C, 1));
        totLines = sum(nbLines, 2);
        for i = 1:size(C, 1)
            collapsed{i, 1} = zeros(totLines(i), nbCols);
            first = 1;
            for j = 1:size(C, 2)
                last =  first + size(C{i, j}, 1) - 1;
                collapsed{i, 1}(first:last, :) = C{i, j};
                first = last;
            end
        end
        C = collapsed;
    end
    
    if numel(collapsed) == 1
        C = collapsed{1, 1};
    end
end