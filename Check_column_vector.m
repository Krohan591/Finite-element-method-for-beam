function [column_vector] = Check_column_vector(matrix)

 if iscolumn(matrix)
     column_vector=matrix;
 else
    column_vector = transpose(matrix);
 end
end
