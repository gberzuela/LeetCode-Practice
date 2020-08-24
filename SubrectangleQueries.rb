class SubrectangleQueries
    =begin
        :type rectangle: Integer[][]
    =end
        def initialize(rectangle)
            @values = rectangle
        end
    
    =begin
        :type row1: Integer
        :type col1: Integer
        :type row2: Integer
        :type col2: Integer
        :type new_value: Integer
        :rtype: Void
    =end
        def update_subrectangle(row1, col1, row2, col2, new_value)
            for i in row1..row2
                for j in col1..col2
                    @values[i][j] = new_value
                end
            end
        end
    
    =begin
        :type row: Integer
        :type col: Integer
        :rtype: Integer
    =end
        def get_value(row, col)
            @values[row][col]
        end
    
    end
    
    # Your SubrectangleQueries object will be instantiated and called as such:
    # obj = SubrectangleQueries.new(rectangle)
    # obj.update_subrectangle(row1, col1, row2, col2, new_value)
    # param_2 = obj.get_value(row, col)