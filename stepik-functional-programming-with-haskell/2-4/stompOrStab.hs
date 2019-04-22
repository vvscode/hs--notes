-- Пусть существуют два класса типов KnownToGork и KnownToMork, которые предоставляют методы stomp (stab) и doesEnrageGork (doesEnrageMork) соответственно:

-- class KnownToGork a where
--     stomp :: a -> a
--     doesEnrageGork :: a -> Bool

-- class KnownToMork a where
--     stab :: a -> a
--     doesEnrageMork :: a -> Bool
-- Класса типов KnownToGorkAndMork является расширением обоих этих классов, предоставляя дополнительно метод stompOrStab:

-- class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
--     stompOrStab :: a -> a
-- Задайте реализацию по умолчанию метода stompOrStab, 
-- которая вызывает метод stomp, если переданное ему значение приводит в ярость Морка; 
-- вызывает stab, если оно приводит в ярость Горка 
-- и вызывает сначала stab, а потом stomp, если оно приводит в ярость их обоих. 
-- Если не происходит ничего из вышеперечисленного, метод должен возвращать переданный ему аргумент.

class KnownToGork a where
    stomp :: a -> a
    doesEnrageGork :: a -> Bool

class KnownToMork a where
    stab :: a -> a
    doesEnrageMork :: a -> Bool

class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
    stompOrStab :: a -> a
    stompOrStab n = if doesEnrageGork n && doesEnrageMork n then stomp (stab n) else if doesEnrageMork n then stomp n else if doesEnrageGork n then stab n else n


-- class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
--     stompOrStab :: a -> a
--     stompOrStab a = 
--         let 
--             stompStab (True, True) = stomp . stab
--             stompStab (True, _   ) = stomp
--             stompStab (_   , True) = stab
--             stompStab _            = id
--         in stompStab (doesEnrageMork a, doesEnrageGork a) a

-- or 

-- class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
--     stompOrStab :: a -> a
--     stompOrStab x | doesEnrageGork x && doesEnrageMork x = stomp $ stab x
--                   | doesEnrageGork x = stab x
--                   | doesEnrageMork x = stomp x
--                   | otherwise = x