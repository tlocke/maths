module Main where
import Haste
import Haste.DOM
import Haste.Events

{-
main = withElems ["q", "a", "v"] messager

messager [q, a, v] = do
        setProp q "innerHTML" (out formulas_1)
        onEvent a KeyUp $ \_ -> do
                iput <- getProp a "value"
                if evaluate iput then setProp v "innerHTML" "correct"
                else setProp v "innerHTML" "incorrect"

formulas_1 = ["~(A | B)", "(~A & ~B)"]

out formulas = "Are the formulas <ul><li>" ++ formulas!!0 ++ "</li><li>" ++
        formulas!!1 ++ "</li></ul>  an identity?"

evaluate :: String -> Bool
evaluate "True" = True
evaluate x = False
-}

main = withElems ["q", "a", "v"] messager

messager [q, a, v] = do
        let question = (questions chapter)!!0
        setProp q "innerHTML" (q_text question)
        onEvent a KeyUp $ \_ -> do
                iput <- getProp a "value"
                if evaluate (answer question) iput then setProp v "innerHTML" "correct"
                else setProp v "innerHTML" "incorrect"

formulas_1 = ["~(A | B)", "(~A & ~B)"]

out formulas = "Are the formulas <ul><li>" ++ formulas!!0 ++ "</li><li>" ++
        formulas!!1 ++ "</li></ul>  an identity?"

evaluate :: String -> String -> Bool
evaluate ans iput = ans == iput

data Chapter = Chapter {
        c_text :: String, questions :: [Question]} deriving (Show)
data Question = Question {
        q_text :: String, answer :: String, solution :: String} deriving (Show)

chapter = Chapter {
        c_text = "Propositional Logic",
        questions = [
                Question {
                        q_text = "Is the sentence, 'Who is John Galt?' a \
                                \statement?",
                        answer = "False",
                        solution = "Not a statement."},
                Question {
                        q_text = "Is the sentence, 'He's over there.' a \
                                \statement?",
                        answer = "False",
                        solution = "Not a statement."},
                Question {
                        q_text = "Is the sentence, 'Three divided by three \
                                \is one.' a statement?",
                        answer = "True",
                        solution = "A statement."},
                Question {
                        q_text = "Is the sentence, 'Belgium is a European \
                                \country.' a statement?",
                        answer = "False",
                        solution = "Not a statement."},
                Question {
                        q_text = "Is the sentence, 'Who is John Galt?' a \
                                \statement?",
                        answer = "False",
                        solution = "Not a statement."},
                Question {
                        q_text = "Is the sentence, 'Who is John Galt?' a \
                                \statement?",
                        answer = "False",
                        solution = "Not a statement."},
                Question {
                        q_text = "Is the sentence, 'Who is John Galt?' a \
                                \statement?",
                        answer = "False",
                        solution = "Not a statement."},
                Question {
                        q_text = "Is the sentence, 'Who is John Galt?' a \
                                \statement?",
                        answer = "False",
                        solution = "Not a statement."},
                Question {
                        q_text = "Is the sentence, 'Who is John Galt?' a \
                                \statement?",
                        answer = "False",
                        solution = "Not a statement."},
                Question {
                        q_text = "Is the sentence, 'Who is John Galt?' a \
                                \statement?",
                        answer = "False",
                        solution = "Not a statement."},
                Question {
                        q_text = "Is the sentence, 'Who is John Galt?' a \
                                \statement?",
                        answer = "False",
                        solution = "Not a statement."},
                Question {
                        q_text = "Is the sentence, 'Who is John Galt?' a \
                                \statement?",
                        answer = "False",
                        solution = "Not a statement."}]}

{-
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
-}
