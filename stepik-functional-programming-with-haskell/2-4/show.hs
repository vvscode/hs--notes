-- Имея функцию ip = show a ++ show b ++ show c ++ show d определите значения a, b, c, d так, чтобы добиться следующего поведения:
-- GHCi> ip
-- "127.224.120.12"

a = 127.2
b = 24.1
c = 2
d = 0.12


-- Вариант ниже меняет не только значения, но и типы (ну и сложнее, чем нужно)

-- data IPSuffix = Suffix Int
-- instance Show IPSuffix where
--     show (Suffix n) = '.' : show n 
-- a = 127
-- b = Suffix 224
-- c = Suffix 120
-- d = Suffix 12