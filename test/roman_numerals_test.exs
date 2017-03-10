defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals



  test "numeral to romans" do
  numbersToRomans = [ {0, ""},
                      {1, "I"},
                      {2, "II"},
                      {3, "III"},
                      {4, "IV"},
                      {5, "V"},
                      {6, "VI"},
                      {8, "VIII"},
                      {9, "IX"},
                      {10, "X"},
                      {11, "XI"}]

    Enum.each numbersToRomans, fn({number, roman}) -> assert RomanNumerals.convert(number) == roman end 

  end