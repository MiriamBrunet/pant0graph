module MainTutorial (main) where

import Prelude
import Effect (Effect)
import Language.Pantograph.Specific.CurrString as CurrString
import Language.Pantograph.Specific.CurrStringInterpreter as CurrStringInterpreter
import Tutorial.StudyTutorial as StudyTutorial
import Tutorial.EditorTutorial2 as EditorTutorial2

main :: Effect Unit
main =
  EditorTutorial2.runTutorial
    CurrString.editorSpec
    StudyTutorial.lessons
    CurrStringInterpreter.interpreter
