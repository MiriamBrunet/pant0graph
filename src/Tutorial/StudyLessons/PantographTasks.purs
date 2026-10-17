module Tutorial.StudyLessons.PantographTasks where

import Prelude
import Tutorial.Markdown (parseMd)
import Tutorial.StudyLessons.CommonPantograph (renderProgram, editActions, makeLesson, selectionsWarning)
import Data.Lazy (Lazy, defer)
import Halogen.HTML as HH
import Language.Pantograph.Specific.Currying as Currying
import Tutorial.EditorTask (Lesson)

lessons :: Array (Lazy (Lesson Currying.PreSortLabel Currying.RuleLabel))
lessons =
    [ makeLesson
        """{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["fib"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Newline"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["n"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"If"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpLessEq"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[1],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[1],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpPlus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpMinus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[1],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpMinus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"IntegerLiteral"}},[{"values":[{"tag":"Right","value":{"values":[2],"tag":"DataInt"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"TermHole"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}"""
        []
        $ defer \_ ->
            HH.div_
              $ [ HH.h1_ [ HH.text "Task 1" ]
                , HH.p_
                    $ parseMd
                        """
            Complete the task. When finished, use ♯button⟦run⟧ to ensure the program is complete and works properly.

            ♯br♯br

            ♯task⟦Call function "fib" with a variable named "z". Define "z" to be 4⟧

            Click ♯button⟦Next Task⟧ to move on to Task 2 when instructed.
            """
                ]
    , makeLesson
        """{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["double"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpPlus"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Let"}},[{"values":[{"tag":"Right","value":{"values":["square"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"ArrowRule"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Lam"}},[{"values":[{"tag":"Right","value":{"values":["x"],"tag":"DataString"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpTimes"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"If"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"OpGreater"}],"tag":"InfixRule"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Suc"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"TermHole"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"App"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Var"}},[{"values":[{"tag":"Left","value":{"values":[],"tag":"Zero"}},[]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[],"tag":"TermHole"}},[{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"Int"}],"tag":"DataTypeRule"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"ConstTrue"}],"tag":"ConstantRule"}},[]],"tag":"Expr"},{"values":[{"tag":"Left","value":{"values":[{"values":[],"tag":"ConstFalse"}],"tag":"ConstantRule"}},[]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}]],"tag":"Expr"}"""
        []
        $ defer \_ ->
            HH.div_
              [ HH.h1_ [ HH.text "Task 2" ]
              , HH.p_
                  $ parseMd
                      """
            This program is incomplete

            ♯br♯br

            ♯task⟦Call "square" and "double" on the same variable. Define that variable to be 4⟧

            Ensure it runs correctly before returning to the survey.

            """
              ]
    ]