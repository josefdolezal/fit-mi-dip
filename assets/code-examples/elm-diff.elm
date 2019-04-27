-- String diff function declaration
diffStrings : String -> String -> Change Character
diffStrings left right = ...

-- Diff old and new versions of the string
diffStrings "modle" "model"
{- Outputs:
        List(6)
            NoChange 'm'
            NoChange 'o'
            NoChange 'd'
            Removed  'l'
            NoChange 'e'
            Added    'l'
-}