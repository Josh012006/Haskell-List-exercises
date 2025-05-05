-- A function that takes a list of integers and returns True if its element are in an 
-- ascending order


isAsc :: [Int] -> Bool
isAsc [] = True
isAsc (x:xs) | null xs = True
             | otherwise = (x <= (head xs)) && isAsc xs


main :: IO()
main = do
    print(isAsc [1, 2, 3, 4, 4, 5])
    print(isAsc [1, 2, 6, 5, 4, 7])