-- Реализуйте функцию twoDigits2Int, которая принимает два символа и возвращает число, 
--  составленное из этих символов, если оба символа числовые, и 100 в противном случае. 
-- (Первый символ рассматривается как количество десятков, второй — единиц.)

-- GHCi> twoDigits2Int '4' '2'
-- 42

import Data.Char
twoDigits2Int :: Char -> Char -> Int
twoDigits2Int x y | isDigit x && isDigit y =  10 * digitToInt x + digitToInt y
                  | otherwise = 100