module Main where
import Haste
import Haste.DOM
import Haste.Events

main = withElems ["q", "a", "v"] messager

{-|
messager [q, a, v] = do
        setProp q "innerHTML" (out formulas_1)
        onEvent a KeyUp $ \_ -> do
                iput <- getProp a "value"
                if eval iput then setProp v "innerHTML" "correct"
                else setProp v "innerHTML" "incorrect"

formulas_1 = ["~(A | B)", "(~A & ~B)"]

out formulas = "Are the formulas <ul><li>" ++ formulas!!0 ++ "</li><li>" ++
        formulas!!1 ++ "</li></ul>  an identity?"

evaluate :: String -> Bool
evaluate "True" = True  
evaluate x = False
-}
questions = [
        ["What's the name of the -= symbol?", "name '-='", "identity"]]

messager [q, a, v] = do
        setProp q "innerHTML" (out formulas_1)
        onEvent a KeyUp $ \_ -> do
                iput <- getProp a "value"
                if eval iput then setProp v "innerHTML" "correct"
                else setProp v "innerHTML" "incorrect"

formulas_1 = ["~(A | B)", "(~A & ~B)"]

out formulas = "Are the formulas <ul><li>" ++ formulas!!0 ++ "</li><li>" ++
        formulas!!1 ++ "</li></ul>  an identity?"
