-- A function hasPath that determines if a path
-- from node to another exists within a directed 
-- graph


startsWith :: Int -> [(Int, Int)] -> [(Int, Int)]
startsWith x xs = filter (\a -> fst a == x) xs -- I use a lambda function here

adj :: (Int, Int) -> Int -> Bool
adj (x, y) a = y == a

rmv :: [(Int, Int)] -> (Int, Int) -> [(Int, Int)]
rmv xs x = filter (\a -> a /= x) xs

hasPath :: [(Int, Int)] -> Int -> Int -> Bool

hasPath [] _ _= False
hasPath ys a b = foldl (||) False (map (\e -> adj e b || hasPath (rmv ys e) (snd e) b)  xs) 
  where xs = (startsWith a ys)


main :: IO()
main = do
    let tab = [(1,2), (2,3), (3,2), (4,3), (4,5)]
    print(hasPath tab 1 3)
    print(hasPath tab 1 5)
    print(hasPath tab 4 2)