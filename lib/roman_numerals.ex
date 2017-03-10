defmodule RomanNumerals do

    @special_romanChars = [
                      {10, "X"},
                      {9, "IX"},
                      {5, "V"},
                      {4, "IV"},                     
                      {1, "I"},
                      {0, ""}]
                      
    def convert(num, @special_romanChars) do
         [{number, roman}|tail] = special_romanChars
         roman <> convert(num - number, tail)
    end  
    
    def convert(num, []) when num < 1 do
     ""
    end
                      
               
                      
    def convert(0) do
        ""
    end
    
    def convert(num) when num > 9 do
        "X" <> convert(num - 10)
    end
    def convert(num) when num == 9 do
        convert(num - 8) <> "X"
    end
    def convert(num) when num > 4 do
        "V" <> convert(num - 5)
    end
    def convert(num) when num == 4 do
    convert(num - 3) <> "V"
    end
    def convert(num) do
        String.duplicate("I", num)
    end
end
