module MainPant0graphTasks (main) where

import Prelude
import Effect (Effect)
import Language.Pantograph.Specific.CurrString as CurrString
import Language.Pantograph.Specific.CurrStringInterpreter as CurrStringInterpreter
import Tutorial.StudyLessons.Pant0graphTasks as StudyPant0graph
import Tutorial.EditorTask as EditorTask

main :: Effect Unit
main =
  EditorTask.runTutorial
    CurrString.editorSpec
    StudyPant0graph.lessons
    CurrStringInterpreter.interpreter
