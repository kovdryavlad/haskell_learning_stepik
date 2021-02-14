-- GHCi> readDigits "365ads"
-- ("365","ads")
-- GHCi> readDigits "365"
-- ("365","")

import Data.Char (isDigit)

readDigits :: String -> (String, String)
readDigits str = span isDigit str
