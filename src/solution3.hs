import Data.List
import Data.Map

main :: IO ()
main = do
    content <- readFile "ex2input.data"
    print $ rare content

rare :: String -> [(Char, Int)]
rare input = toList $ fromListWith (+) [(x, 1) | x <- input]