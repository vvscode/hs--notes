-- Будем задавать точки на плоскости парами типа (Double, Double). 
-- Реализуйте функцию dist, которая возвращает расстояние между двумя точками, 
-- передаваемыми ей в качестве аргументов.

-- dist :: (Double, Double) -> (Double, Double) -> Double
-- dist p1 p2 = ???

square = (^ 2)

dist :: (Double, Double) -> (Double, Double) -> Double
-- http://pointfree.io/
-- dist = (sqrt .) . ap (ap . ((+) .) . flip flip 2 . ((^) .) . (. fst) . (-) . fst) (flip flip 2 . ((^) .) . (. snd) . (-) . snd)
-- dist (x1, y1) (x2, y2) = sqrt $ (x2 - x1) ^ 2 + (y2 - y1) ^ 2
dist p1 p2 = sqrt $ (fst p1 - fst p2) ^ 2 + (snd p1 - snd p2) ^ 2 