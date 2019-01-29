-- Реализуйте функцию, находящую сумму и количество цифр десятичной записи заданного целого числа.

-- sum'n'count :: Integer -> (Integer, Integer)
-- sum'n'count x = undefined
-- GHCi> sum'n'count (-39)
-- (12,2)

sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x | x < 0 =  sum'n'count(abs x)
              | otherwise = (sum x, count x)
    where
        sum x   | x < 10 = x
                | otherwise = (x `mod` 10) + sum (x `div` 10)
        count x | x < 10 = 1
                | otherwise  = 1 + count (x `div` 10)

-- sum'n'count :: Integer -> (Integer, Integer)
-- sum'n'count x = helper (0, 0, abs(x))
--   where
--     helper (n, sum, x)
--       | x < 10 = (x + sum, n + 1)
--       | otherwise = helper(n + 1, sum + x `mod` 10, x `div` 10)