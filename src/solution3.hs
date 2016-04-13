import Data.List
import Data.Ord

main :: IO ()
main = do
    --print $ rare "aslkdjalsdjaslkdz"
    content <- readFile "ex2input.data"
    --print $ map snd $ take 8 $ rare content
    print $ filter (\x -> x `elem` ['a'..'z']) content


rare :: String -> [(Int, Char)]
rare input = sortBy (comparing fst) $ map (\l -> (length l, head l)) $ group (sort input)