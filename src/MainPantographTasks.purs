module MainPantographTasks (main) where

import Prelude
import Effect (Effect)
import Language.Pantograph.Specific.Currying as Currying
import Language.Pantograph.Specific.CurryingInterpreter as CurryingInterpreter
import Tutorial.StudyLessons.PantographTasks as StudyPantograph
import Tutorial.EditorTask as EditorTask

main :: Effect Unit
main =
  EditorTask.runTutorial
    Currying.editorSpec
    StudyPantograph.lessons
    CurryingInterpreter.interpreter