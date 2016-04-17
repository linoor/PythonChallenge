import Network.HTTP
import Text.Regex

baseUrl = "http://www.pythonchallenge.com/pc/def/linkedlist.php?nothing="

openURL :: String -> IO String
openURL x = getResponseBody =<< simpleHTTP (getRequest x)

getNum :: String -> Maybe Int
getNum page = do
    match <- matchRegex regex page
    return $ read . head $ match
    where
        regex = mkRegex "nothing is ([0-9]+)"

getPage :: Int -> IO String
getPage num = openURL $ baseUrl ++ (show num)

getNewNum :: Int -> IO (Maybe Int)
getNewNum num = do
    page <- getPage num
    return $ getNum page

findLast :: Int -> IO Int
findLast initNum = do
    newNum <- getNewNum initNum
    case newNum of
        Nothing -> return $ initNum
        (Just n) -> findLast n

main :: IO ()
main = do
    num <- findLast 8022
    print num
    return ()
