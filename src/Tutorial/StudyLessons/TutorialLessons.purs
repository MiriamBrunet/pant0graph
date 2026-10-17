module Tutorial.StudyLessons.TutorialLessons where

import Prelude
import Tutorial.Markdown (parseMd)
import Data.Lazy (Lazy, defer)
import Halogen.HTML as HH
import Language.Pantograph.Specific.CurrString as CurrString
import Tutorial.EditorTutorial2 (Lesson)
import Tutorial.StudyLessons.CommonPant0graph (editActions, makeLesson, selectionsWarning, renderProgram)

lessons :: Array (Lazy (Lesson CurrString.PreSortLabel CurrString.RuleLabel))
lessons =
  [ makeLesson
      """{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["fib"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Newline"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["n"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"If"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpLessEq"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[1],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[1],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpPlus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpMinus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[1],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpMinus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[2],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[5],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}"""
      []
      $ defer \_ ->
          HH.div_
            $ [ HH.h1_ [ HH.text "Introduction" ]
              , HH.p_
                  $ parseMd
                      """
          This tutorial is an introduction to ♯Pantograph, a structure editor.
          Although the code looks like text, it actually isn't.

          ♯br♯br

          Just like a text editor, you can navigate in Pantograph using a cursor.
          Unlike a text editor, the cursor goes around entire expressions.
          
          ♯task⟦Hover over the program to reveal its structure.⟧
          ♯task⟦Click to place the cursor.⟧

          ♯br

          You can write terms very quickly in pantograph using some simple shortcuts.
          Write the plus function a second time, but this time:
          """
            , HH.ul_
                [ HH.li_ $ parseMd """Use "Spacebar" instead of "Tab"/"Enter" to submit forms. This brings your cursor to the next hole."""
                , HH.li_ $ parseMd """Skip over type annotations: press "Spacebar" to skip to the next hole, and let Pantograph fill in the types as you input the terms."""
                ],
          HH.p_ $ parseMd """
          
          Then, click ♯button⟦Next Lesson⟧ to move on.
          """
              ]
  , makeLesson
      """{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["fib"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Newline"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["n"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"If"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpLessEq"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[1],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"TermHole"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpPlus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpMinus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[1],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpMinus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"TermHole"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[5],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}"""
      []
      $ defer \_ ->
          HH.div_
            [ HH.h1_ [ HH.text "Holes" ]
            , HH.p_
                $ parseMd
                    """
          Here is the same program, but with a couple of the terms removed.
          Two of the numbers from the program have been deleted, leaving holes in their places.
          ♯br♯br
          A ♯bold⟦hole⟧ is a placeholder term, displayed as ♯dataTyHole⟦T⟧, where ♯code⟦T⟧ is the type of the hole.
          ♯br♯br
          To ♯bold⟦fill⟧  in a hole,
          move the cursor to the ♯code⟦□⟧ inside the hole,
          then write the value to fill,
          and finally press "Tab".
          
          ♯task⟦Fill each hole.⟧

          As you type, ♯Pantograph will list all the possible terms of the right type to fit in the hole.
          """
            ]
  , makeLesson
      """{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["double"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpPlus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["result"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[100],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}"""
      []
      $ defer \_ ->
          HH.div_
            [ HH.h1_ [ HH.text "Insertion" ]
            , HH.p_
                $ parseMd
                    """
          In Pantograph, you can also wrap forms around existing expressions in the program.
          You will wrap a call to ♯code⟦double⟧ around ♯code⟦100⟧

          ♯task⟦Click on "100"⟧

          ♯task⟦Type "double" and press Tab.⟧
          """
            ]
  , makeLesson
      """{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["double"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpPlus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["square"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpTimes"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["triple"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpTimes"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[3],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["square_or_triple"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Bool"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Newline"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["b"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Bool"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Newline"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"If"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[10],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"ConstTrue"}],"tag":"ConstantRule"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}"""
      []
      $ defer \_ ->
          HH.div_
            [ HH.h1_ [ HH.text "Introducing Selections" ]
            , HH.p_
                $ parseMd
                    """
          So far you've been editing with only the ♯bold⟦cursor⟧.
          
          ♯br♯br

          In ♯Pantograph you can also make a ♯bold⟦selection⟧ between two terms by clicking and dragging the mouse from one term to the other.
          This selects the area ♯bold⟦inside one term, but outside the other⟧.

          ♯br♯br

          Try making some selections to get a feel for it. In the next lessons, we will explore selections in detail.
          """
            ]
  , makeLesson --remove??
      """{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["given"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpPlus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[5],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[6],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["task "],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpMinus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpPlus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[5],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[6],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[3],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Newline"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["given"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Bool"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"ConstTrue"}],"tag":"ConstantRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["task "],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Bool"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpAnd"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"ConstTrue"}],"tag":"ConstantRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"ConstFalse"}],"tag":"ConstantRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Newline"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["given"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[6],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["task "],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[6],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Newline"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["given"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpMinus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[4],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[3],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["task "],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpMinus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpPlus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[4],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[6],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[3],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Newline"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["f"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["given"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[10],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["task "],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[10],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Newline"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"TermHole"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"TypeHole"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}"""
      []
      $ defer \_ ->
          HH.div_
            [ HH.h1_ [ HH.text "Selection Practice" ]
            , HH.p_
                $ parseMd
                    """

          For each task, make a single selection and press "Backspace/Delete".

          ♯task⟦Edit each "task" to match each "given"⟧
          """
            ]
  , makeLesson
      """{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["double"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpPlus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["square"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpTimes"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["triple"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpTimes"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[3],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["square_or_triple"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Bool"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Newline"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["b"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Bool"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Newline"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"If"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[10],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"ConstTrue"}],"tag":"ConstantRule"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}"""
      []
      $ defer \_ ->
          HH.div_
            [ HH.h1_ [ HH.text "Rearranging Definitions" ]
            , HH.p_ $ parseMd $ selectionsWarning
                <> """
          One thing that you can do with selections is to rearrange definitions.
          We will swap the order of the ♯code⟦square⟧ and ♯code⟦triple⟧ definition.

          ♯task⟦Select the definition of square: drag from the "let" in "let square" to the "let" in "let triple".⟧

          ♯task⟦Cut (ctrl+x).⟧
          
          ♯task⟦Move the cursor below the definition of triple: click on the "let" in "let square_or_triple".⟧

          ♯task⟦Paste (ctrl+v).⟧
          """
            ]
  , makeLesson
      """{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["double"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpPlus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["square"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpTimes"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["triple"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpTimes"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[3],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["square_or_triple"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Bool"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Newline"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["b"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Bool"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Newline"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"If"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[10],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"ConstTrue"}],"tag":"ConstantRule"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}"""
      []
      $ defer \_ ->
          HH.div_
            [ HH.h1_ [ HH.text "Rearranging Function Calls" ]
            , HH.p_ $ parseMd $ selectionsWarning
                <> """
          You will use a selection to rearrange the function calls on the last line from
          ♯br
          ♯code⟦(square_or_triple (double 10) true)⟧ to ♯br
          ♯code⟦(double (square_or_triple 10 true))⟧

          ♯br ♯br

          To do this, first note that to place your cursor on a function application, you click on the parenthesis around the
          function call.

          ♯task⟦Select the "double" function call: drag from the "(" in "(double" to the "10".⟧
          
          ♯task⟦Cut (ctrl+x).⟧
          ♯task⟦Paste onto the "(" in "(square_or_triple".⟧

          ♯br ♯br

          ♯bold⟦Bonus:⟧ try rearranging the function calls on the last line back to be ♯code⟦(square_or_triple (double 10) true)⟧ by making a certain selection starting from the "(" in "(square_or_triple" and then copying and pasting. 
          Notice that this selection wouldn't be possible in a text editor!
          """
            ]
  , makeLesson --remove
      """{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["f"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"TermHole"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["y"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[10],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}"""
      []
      $ defer \_ ->
          HH.div_
            [ HH.h1_ [ HH.text "Type Boundaries" ]
            , HH.p_
                $ parseMd
                    """
          ♯Pantograph prevents you from making type errors.
          But you can still make edits that that introduce a temporary ♯bold⟦type boundary⟧, 
          where the type of the term inside the boundary doesn't fit with the code around it.

          ♯br♯br

          Edit ♯code⟦f⟧ to take a ♯code⟦Bool⟧ as input instead of an ♯code⟦Int⟧.

          ♯task⟦Replace the input "Int" of "f" with "Bool"⟧

          The ♯code⟦y⟧ in ♯code⟦(f y)⟧ now has a type boundary around it.
          Try hovering over it.

          ♯br

          Next, you will update ♯code⟦y⟧ to fix the boundary.

          ♯task⟦Replace the type of y with Bool⟧

          We fixed ♯code⟦(f y)⟧, but now there is a type boundary around the value of ♯code⟦y⟧.
          Type boundaries are themselves terms, and you can place your cursor on them by
          clicking the ♯code⟦⦃⟧ ♯code⟦⦄⟧.

          ♯task⟦Delete the ⦃10⦄ in "let y : Bool = ⦃10⦄".⟧
          ♯task⟦Fill the hole with a boolean value.⟧
          """
            ]
  , makeLesson
      """{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["f"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"TermHole"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["y"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Bool"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ErrorBoundary"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[10],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ErrorBoundary"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}"""
      []
      $ defer \_ ->
          HH.div_
            [ HH.h1_ [ HH.text "Deleting a Type Boundary" ]
            , HH.p_
                $ parseMd
                    """
          In Pantograph, you can make edits that that introduce a temporary ♯bold⟦type boundary⟧,
          where the type of the term inside the boundary doesn't fit with the code around it.
          To fix a type boundry, you can edit either through the term itself or the type boundry.

          The types in this program don't line up, and there are two type boundaries.
          This time, you will edit the program so that the 10 remains in place.

          ♯br♯br

          Because type boundaries are themselves terms, you can select the type boundary itself.
          ♯task⟦Select the type boundary: drag from the "⦃" or "⦄" to the "10".⟧
          ♯task⟦Delete.⟧
          ♯Pantograph automatically changed the type of ♯code⟦y⟧ to ♯code⟦Int⟧ in order to match ♯code⟦10⟧, 
          and this fixed the boundary later in the program as well.
          
          ♯br♯br
          
          When you delete a selection, ♯Pantograph updates the program around the ouside the selection to respect the
          type of the new term now in that place.
          """
            ]
  , makeLesson
        """{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["f"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["n"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpPlus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[4],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["random"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"FreeVar"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["random1"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"TypeHole"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"TermHole"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"TypeHole"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[3],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}"""
        []
        $ defer \_ ->
            HH.div_
              [ HH.h1_ [ HH.text "Using the Backpack" ]
              , HH.p_
                  $ parseMd
                      """
            In one of the versions of Pantograph that you will be testing, insertion of an undefined
            variable will produce a #bold⟦Backpack⟧ holding the declaration for the variable.

            ♯br♯br

            In this program, practice using the Backpack. It already contains undeclared variable
            #code⟦random1⟧. You do not need to fix this.
            ♯task⟦Replace the declared "x" in "f(x)" with an undeclared "y"⟧
            This will add its declaration to the backpack.
            ♯task⟦Navigate to where you want to place the declaration⟧
            #task⟦Use Shift-↑ to enter the backpack, the arrow keys to navigate and select the declaration for
                  #code⟦y⟧, Esc to exit without insertion, and Space or Enter to insert it⟧

            ♯br♯br

            When you insert the declaration, ♯Pantograph can resolve the undeclared variable.
            """
              ]
  , makeLesson
        """{"values":[{"tag":"Left","value":{"values":[],"tag":"TermHole"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"TypeHole"}},[]],"tag":"Expr"}]],"tag":"Expr"}"""
        []
        $ defer \_ ->
            HH.div_
              [ HH.h1_ [ HH.text "Practice" ]
              , HH.p_
                  $ parseMd
                      """
            Using your knowledge, write the function ♯code⟦plus⟧, which takes two inputs and uses "+" to add them together, from scratch.
            ♯br♯br
            """
              , HH.p_
                  $ parseMd
                      """
            ♯task⟦Write the function "plus".⟧
            """,
            renderProgram """{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["plus"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["y"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpPlus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"TermHole"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"TypeHole"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}"""
              ]
  , makeLesson
      """{"values":[{"tag":"Left","value":{"values":[],"tag":"TermHole"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"TypeHole"}},[]],"tag":"Expr"}]],"tag":"Expr"}"""
      []
      $ defer \_ ->
          HH.div_
            $ [ HH.h1_ [ HH.text "End of tutorial" ]
              , HH.p_
                  $ parseMd
                      """
          You now know the basics of editing with ♯Pantograph!
          If you have extra time, feel free to experiment on your own.
          """
              ]
            <> editActions
--  , makeLesson
--      """{"values":[{"tag":"Left","value":{"values":[],"tag":"TermHole"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"TypeHole"}},[]],"tag":"Expr"}]],"tag":"Expr"}"""
--      []
--      $ defer \_ ->
--          HH.div_
--            $ [ HH.h1_ [ HH.text "Checkpoint before Exercises" ]
--              , HH.p_
--                  $ parseMd
--                      """
--          You now know the basics of editing with ♯Pantograph!
--          Take a moment to experiment with this novel style of editing.
--          """
--              ]
--            <> editActions
--            <> [ HH.p_
--                  $ parseMd
--                      """
--          The next lessons are simple exercises to practice what you've learned.
--          """
--              ]
--  , makeLesson
--      """{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["sum"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"TypeHole"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"TermHole"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"TypeHole"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"TermHole"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"TypeHole"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}"""
--      []
--      $ defer \_ ->
--          HH.div_
--            $ [ HH.h1_ [ HH.text "Exercise: sum" ]
--              , HH.p_
--                  $ parseMd
--                      """
--          Implement ♯code⟦sum⟧, a function that computes the sum of a list of integers.
--
--          ♯br♯br
--
--          Example behavior: ♯code⟦sum (cons 0 (cons 1 (cons 2 nil))) = 3⟧
--          """
--              ]
--            <> editActions
  ]
