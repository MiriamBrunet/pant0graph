module Tutorial.StudyTutorial where

import Prelude
import Data.Lazy (Lazy)
import Language.Pantograph.Specific.CurrString as CurrString
import Tutorial.StudyLessons.TutorialLessons as TutorialLessons
import Tutorial.EditorTutorial2 (Lesson)

{-
A specific tutorial for the CurrString.purs language during the survey
-}

lessons :: Array (Lazy (Lesson CurrString.PreSortLabel CurrString.RuleLabel))
lessons =TutorialLessons.lessons
