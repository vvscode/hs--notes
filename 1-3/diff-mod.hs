-- Реализуйте оператор |-|, который возвращает модуль разности переданных ему аргументов:

-- GHCi>  5 |-| 7
-- 2

infixl 6 |-|

-- a |-| b = if a > b then a - b else b - a
x |-| y = abs ( x - y )
