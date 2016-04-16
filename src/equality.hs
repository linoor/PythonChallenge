import Data.Array
import Text.Regex
import Text.Regex.Base

main :: IO ()
main = do
    content <- readFile "ex3.data"
    let regex = mkRegex "[a-z][A-Z]{3}([a-z])[A-Z]{3}[a-z]"
    print $ map (!! 4) $ map (fst . head . elems) $ matchAllText regex content
