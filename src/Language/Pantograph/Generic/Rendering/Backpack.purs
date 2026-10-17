module Language.Pantograph.Generic.Rendering.Backpack where

import Language.Pantograph.Generic.Edit
import Language.Pantograph.Generic.Grammar
import Language.Pantograph.Generic.Rendering.Base
import Prelude

import Bug (bug)
import Bug.Assertion (assert, just)
import Control.Alternative (guard)
import Data.Array as Array
import Data.Either (Either(..))
import Data.Expr ((%), (%*))
import Data.Expr as Expr
import Data.Fuzzy (Distance(..), FuzzyStr(..))
import Data.Fuzzy as Fuzzy
import Data.Lazy (Lazy, defer, force)
import Data.Maybe (Maybe(..))
import Data.Rational as Rational
import Data.Tuple (fst, snd)
import Data.Tuple.Nested ((/\), type (/\))
import Data.Variant (case_, on)
import Debug as Debug
import Effect.Aff (Aff)
import Effect.Class (liftEffect)
import Halogen as H
import Halogen.HTML (div, input, text) as HH
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP
import Halogen.Hooks as HK
import Halogen.Utilities (classNames, fromInputEventToTargetValue, scroll_into_view)
import Hole (hole)
import Language.Pantograph.Generic.Rendering.Elements (placeholderCursorNodeElem)
import Log (log)
import Text.Pretty (bullets, pretty)
import Type.Direction (_down, _up)
import Web.Event.Event as Event
import Web.HTML.HTMLElement as HTMLElement
import Web.HTML.HTMLInputElement as InputElement
import Web.UIEvent.MouseEvent as MouseEvent

--Backpack takes current list of freeVars and if that lsit > 0, displays with free bars to insert. It should display let x be _ in wrap
type BackpackPreState l r =
  { backpackFocus :: Int
  }

type BackpackState l r =
  { isEnabled :: Boolean
  , backpackFocus :: Int
  , normalBackpackFocus :: Int
  , backpackEntries :: Array (BackpackEdit l r)
  , focusedFreeVar :: Maybe (BackpackEdit l r)
  }

computeNormalBackpackFocus {backpackFocus, backpackEntries} =
  if Array.length backpackEntries > 0 then
    backpackFocus `mod` Array.length backpackEntries
  else
    0

computeFocusedEdit {isEnabled, normalBackpackFocus, backpackEntries} = do
  if isEnabled
    then Array.index backpackEntries normalBackpackFocus
    else Nothing

computeBackpackState :: forall l r. IsRuleLabel l r => BackpackInput l r -> BackpackPreState l r -> BackpackState l r
computeBackpackState input preSt@{backpackFocus} = do
  let backpackEntries = input.backpackEntries
  let isEnabled = Array.length input.backpackEntries /= 0
  let normalBackpackFocus = computeNormalBackpackFocus {backpackFocus, backpackEntries}
  let focusedFreeVar = computeFocusedEdit {isEnabled, normalBackpackFocus, backpackEntries}
  { isEnabled
  , backpackFocus
  , normalBackpackFocus
  , backpackEntries
  , focusedFreeVar
  }

extractBackpackPreState :: forall l r. IsRuleLabel l r => BackpackState l r -> BackpackPreState l r
extractBackpackPreState
  { isEnabled
  , backpackFocus
  , normalBackpackFocus
  , backpackEntries
  , focusedFreeVar
  } =
  { backpackFocus
  }

backpackComponent :: forall l r. IsRuleLabel l r => H.Component Query (BackpackInput l r) (Output l r) Aff
backpackComponent = HK.component \tokens input -> HK.do
  currentBackpackPreState /\ backpackState_id <- HK.useState {backpackFocus: 0} -- store just focus? Initial state! Runs only at beginning, resets to 0
  let currentBackpackState = computeBackpackState input currentBackpackPreState -- recalculate every time
  let currentBackpackEdit =
        case currentBackpackState.focusedFreeVar of -- takes current free var and checks for position
            Just focusedEntry -> Just focusedEntry.edit
            Nothing -> Nothing
  let 
    setPreview mb_preview = HK.raise tokens.outputToken $ SetPreviewOutput mb_preview

  let 
    get = HK.get backpackState_id

    -- handles computing functionally-dependent parts of backpackState and updating preview
    put _st = do
      let st = computeBackpackState input _st
      HK.put backpackState_id _st
      -- update preview
--      case st.focusedFreeVar of
--        Nothing -> setPreview Nothing
--        Just {lazy_preview} -> setPreview (Just (force lazy_preview))
      pure st

    modify :: (BackpackPreState l r -> BackpackPreState l r) -> HK.HookM Aff (BackpackState l r)
    modify f = do
      st <- get
      let st' = f st
      put st'

  -- | Yields whether or not submission was successful
  let submitBackpack _ = do
        case currentBackpackEdit of
          Just edit -> --if the edit is possible
            case edit.action of
                Right action -> do --No closing backpack here - done in Editor because editor knows if user has control
                    HK.raise tokens.outputToken $ ActionOutput (force action) --submit edit
                    pure true
                Left _ -> pure false  --return nothing because edit is invalid at location
          Nothing -> pure false

  let modifyBackpackFocus f = --do
        modify \st -> st {backpackFocus = f st.backpackFocus}
--        setPreview (force <$> (st.focusedFreeVar <#> _.lazy_preview))

  HK.useQuery tokens.queryToken case _ of
--      if isEnabled' then do
--          -- focus backpack input tag
--          HK.getHTMLElementRef backpackInputRefLabel >>= \mb_elem ->
--            assert (just ("could not find element with ref ExprLabel: " <> backpackInputRefLabelString) $ mb_elem) \elem -> do
--              liftEffect $ HTMLElement.focus elem
--              case mb_str of
--                Nothing -> pure unit
--                Just str ->
--                  assert (just ("could not find element with ref ExprLabel: " <> backpackInputRefLabelString) $
--                    InputElement.fromElement (HTMLElement.toElement elem)) \inputElem -> do
--                      -- initialize string in backpack
--                      liftEffect $ InputElement.setValue str inputElem
--                      void $ modify _
--                        { freeVars = findFreeVar(state?)
--                        , backpackFocus = 0 -- reset backpackFocus
--                        }
--          -- -- update facade to BackpackCursorMode
--          -- HK.raise tokens.outputToken $ UpdateStateOutput \_ ->
--          --   pure $ CursorState (cursorFromHoleyDerivZipper input.hdzipper) {mode = BackpackCursorMode}
--
--      else do
--        -- clear preview
--        setPreview Nothing
--        -- -- update facade to CursorState
--        -- HK.raise tokens.outputToken $ UpdateStateOutput \_ ->
--        --   pure $ CursorState (cursorFromHoleyDerivZipper input.hdzipper)
    SetBufferEnabledQuery _ _ _ -> do
        pure Nothing

    MoveBufferQuery _ _ -> do
        pure Nothing
--      st <- get
--      if st.isEnabled then do
--        (qm # _) $ case_
--          # on _up (\_ -> modifyBackpackFocus (_ - 1)) --Changes selection (keep)
--          # on _down (\_ -> modifyBackpackFocus (_ + 1))
--        pure $ Just a
--      else
--        pure Nothing
    SubmitBufferQuery _ -> do
        pure Nothing

    SetBackpackEnabledQuery _ _ -> do
        pure Nothing

    MoveBackpackQuery qm a -> do
      prestate <- get
      let st = computeBackpackState input prestate
      if st.isEnabled then do
        poststate <-
          (qm # _) $ case_
            # on _up (\_ -> modifyBackpackFocus (_ - 1))
            # on _down (\_ -> modifyBackpackFocus (_ + 1))
        let labelString = "backpack-result-" <> show poststate.normalBackpackFocus
        let label = H.RefLabel labelString
        HK.getHTMLElementRef label >>= \mb_elem ->
          assert
              (just ("could not find element with ref ExprLabel: " <> labelString) $ mb_elem)
              \elem -> liftEffect $ scroll_into_view elem
        pure $ Just a
      else
        pure Nothing
    SubmitBackpackQuery a -> do     -- if want to submit
        submitBackpack unit >>= case _ of --submit
            false -> pure Nothing
            true -> pure $ Just a

  HK.pure $
    HH.div
      [ classNames ["subnode", "backpack"]
      ] $
      Array.concat
      [ if not currentBackpackState.isEnabled then [] else
        [ HH.div [classNames ["backpack-inner"]] $
          [HH.div
            [ classNames ["backpack-results"] ] $
            flip Array.mapWithIndex currentBackpackState.backpackEntries \i {edit, lazy_preview} ->
              HH.div
                [ classNames $ ["backpack-result"] <>
                    if i == currentBackpackState.normalBackpackFocus
                        then ["backpack-focus"]
                        else []
                , let backpackResultLabel = H.RefLabel ("backpack-result-" <> (show i)) in
                    HP.ref $ backpackResultLabel
                , HE.onMouseMove \event -> do
                    liftEffect $ Event.preventDefault $ MouseEvent.toEvent event
                    void $ modify _ {backpackFocus = i}
                , HE.onMouseDown \event -> do
                    liftEffect $ Event.preventDefault $ MouseEvent.toEvent event
                    void $ modify _ {backpackFocus = i}
                    void $ submitBackpack unit
                ]
                (case edit.action of
                    Right _ ->
                            (case force lazy_preview of
                              FillEditPreview html -> [html]
                              WrapEditPreview {before, after} -> before <> [placeholderCursorNodeElem] <> after
                              ReplaceEditPreview html -> [html])
                    Left _ -> [HH.text (edit.label <> ": Invalid insertion point")]
                )
          ]
        ]
      ]