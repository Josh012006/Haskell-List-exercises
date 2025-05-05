-- A function that tells if an element is in a given list

myElem a [] = False
myElem a (x:xs) = x == a || myElem a xs

main :: IO()
main = do
  let tab = [1, 2, 3, 4, 5]
  print(myElem 2 tab)
  print(myElem 6 tab)