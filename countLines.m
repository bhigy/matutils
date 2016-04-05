function nbLines = countLines(cellArray)
% countLines count the number of lines of the matrices in the cell array

    nbLines = zeros(size(cellArray));
    for i = 1:size(cellArray, 1)
        for j = 1:size(cellArray, 2)
            nbLines(i,j) = size(cellArray{i,j}, 1);
        end
    end
end