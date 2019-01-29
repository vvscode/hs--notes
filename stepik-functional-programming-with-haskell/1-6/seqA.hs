-- Реализуйте функцию seqA, находящую элементы следующей рекуррентной последовательности

-- 𝑎0=1;𝑎1=2;𝑎2=3;𝑎𝑘+3=𝑎𝑘+2+𝑎𝑘+1−2𝑎𝑘.
-- Попытайтесь найти эффективное решение.

-- GHCi> seqA 301
-- 1276538859311178639666612897162414

seqA :: Integer -> Integer

seqA n | n == 0 = 1
       | n == 1 = 2
       | n == 2 = 3
       | n > 2  =  let
          recurrently acc1 acc2 acc3 0 = acc1
          recurrently acc1 acc2 acc3 n = recurrently acc2 acc3 ((acc3 + acc2) - 2*acc1) (n-1)
          in recurrently 1 2 3 n

