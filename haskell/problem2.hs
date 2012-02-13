import System.Environment



main :: IO ()
main = print (sum (filter (\x -> mod x 2 ==0 ) (takeWhile (< 4000000) ( map fib [1..] ))))

fib 0 = 0
fib 1 = 1
fib x = fib(x-1)+fib(x-2)