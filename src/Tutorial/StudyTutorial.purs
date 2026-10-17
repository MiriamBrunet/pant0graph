module Tutorial.StudyTutorial where

import Prelude
import Tutorial.Markdown (HTML, parseMd)
import CSS as CSS
import CSS.Size as CSSSize
import Data.Bifunctor (bimap)
import Data.Expr as Expr
import Data.Lazy (Lazy, defer, force)
import Data.List (List(..))
import Halogen.HTML as HH
import Halogen.HTML.CSS as HCSS
import Halogen.Utilities (classNames)
import Language.Pantograph.Generic.Grammar as Grammar
import Language.Pantograph.Generic.Rendering.Base as Base
import Language.Pantograph.Generic.Rendering.Rendering as Rendering
import Language.Pantograph.Specific.CurrString as CurrString
import Tutorial.StudyTutorial.TutorialLessons as TutorialLessons
import Tutorial.EditorTutorial2 (Lesson)

{-
A specific tutorial for the CurrString.purs language during the survey
-}

lessons :: Array (Lazy (Lesson CurrString.PreSortLabel CurrString.RuleLabel))
lessons =TutorialLessons.lessons
