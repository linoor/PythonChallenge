import Data.Char

main :: IO ()
main = print $ map (nextLetter . nextLetter) input

input :: String
input = " fmnc wms bgblr rpylqjyrc gr zw fylb. rfyrq ufyr amknsrcpq ypc dmp. bmgle gr gl zw fylb gq glcddgagclr ylb rfyr'q ufw rfgq rcvr gq qm jmle. sqgle qrpgle.kyicrpylq() gq pcamkkclbcb. lmu ynnjw ml rfc spj."

nextLetter :: Char -> Char
nextLetter c = chr $ (ord c + 1) `mod` (ord 'a' + 26)