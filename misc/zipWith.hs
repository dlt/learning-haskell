import System.Environment

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

main :: IO()
main = do
  putStrLn $ show (zipWith' (\x y -> x + y) [1, 2, 3] [4, 5, 6])

