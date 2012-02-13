import Data.List
import System.Environment
import Data.Maybe

main :: IO()
lowestDivisor :: Integral a => a -> Maybe a
primeFactors :: Integral a => a -> [a]
primes :: Integral a => [a]

main = do {
	print (primeFactors 600851475143)
}

lowestDivisor x = find (\n -> (mod x n) == 0) (take 1000 primes)

primeFactors x = 
	let v = lowestDivisor x
		in if isJust v then primeFactors(div x (fromJust v)) ++ [(fromJust v)]  else []


primes = [x | x <- [2..], isPrime x]

isPrime 2 = True
isPrime 3 = True
isPrime x = if isJust (find (\n -> (mod x n) == 0) [2..(x-1)]) then False else True