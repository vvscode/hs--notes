-- Напишите функцию с сигнатурой:

-- avg :: Int -> Int -> Int -> Double
-- вычисляющую среднее значение переданных в нее аргументов:

-- GHCi> avg 3 4 8
-- 5.0

avg :: Int -> Int -> Int -> Double
avg a b c = (fromIntegral a + fromIntegral b + fromIntegral c)/3

-- avg x y z = (/ 3) $ sum $ map fromIntegral [x, y, z]
