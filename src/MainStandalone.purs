module MainStandalone (main) where

import Prelude
import Effect (Effect)
import Effect.Class.Console as Console
import Halogen.Aff as HA
import Halogen.VDom.Driver as VDomDriver
import Language.Pantograph.Generic.Grammar as Grammar
import Language.Pantograph.Generic.Rendering.Base as Base
import Language.Pantograph.Generic.Rendering.RunnableEditor as RunnableEditor
-- import Language.Pantograph.Specific.Currying as Currying
-- import Language.Pantograph.Specific.CurryingInterpreter as CurryingInterpreter
import Language.Pantograph.Specific.CurrString as CurrString
import Language.Pantograph.Specific.CurrStringInterpreter as CurrStringInterpreter

main :: Effect Unit
-- main = runEditorForLang { spec: Currying.editorSpec, interpreter: CurryingInterpreter.interpreter }
main = runEditorForLang { spec: CurrString.editorSpec, interpreter: CurrStringInterpreter.interpreter }

runEditorForLang :: forall l r. Grammar.IsRuleLabel l r => { spec :: Base.EditorSpec l r, interpreter :: Grammar.DerivTerm l r -> String } -> Effect Unit
runEditorForLang { spec, interpreter } =
  HA.runHalogenAff do
    Console.log "[main]"
    body <- HA.awaitBody
    VDomDriver.runUI RunnableEditor.component { spec, interpreter } body
