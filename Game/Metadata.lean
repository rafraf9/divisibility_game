import GameServer.Commands

import Game.MyNat.Definition

import Game.Doc.Definitions
import Game.Doc.Tactics

import Mathlib.Tactic

import Game.Tactic.Induction
import Game.Tactic.Cases
import Game.Tactic.Rfl
import Game.Tactic.Rw
import Game.Tactic.Use
import Game.Tactic.Ne
import Game.Tactic.Xyzzy
-- import Std.Tactic.RCases
-- import Game.Tactic.Have
-- import Game.Tactic.LeftRight

-- TODO: Why does this not work here??
-- We do not want `simp` to be able to do anything unless we unlock it manually.
attribute [-simp] MyNat.succ.injEq
