import Data.Char

isScary :: String -> Bool
isScary word = 
  let
    filtered :: String
    filtered = map toLower $ filter isAlpha word
    charToInt :: Char -> Int
    charToInt c = ord c - ord 'a' + 1
  in
    sum (map charToInt filtered) == 13
  
main :: IO ()  
main = do
  ws <- lines <$> getContents
  let scaryWs = filter isScary ws
  mapM_ putStrLn scaryWs
