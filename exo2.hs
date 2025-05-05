-- A function that removes the duplicates from a list

nub [] = []
nub (x:xs) = [x] ++ (nub (filter isNotEqual xs))
  where isNotEqual a = x /= a


main :: IO()
main = do
    let x = [1, 2, 1, 5, 6, 7, 2, 3, 1]
    print(nub x)

