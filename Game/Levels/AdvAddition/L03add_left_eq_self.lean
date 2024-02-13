import Game.Levels.AdvAddition.L02add_left_cancel

World "AdvAddition"
Level 3
Title "add_left_eq_self"

namespace MyNat

TheoremTab "+"

/-- `add_left_eq_self x y` is the theorem that $x + y = y\\implies x=0.$ -/
TheoremDoc MyNat.add_left_eq_self as "add_left_eq_self" in "+"

Introduction
"
`add_left_eq_self x y` is the theorem that $x + y = y\\implies x=0.$
"

/-- $x + y = y\implies x=0.$ -/
Statement add_left_eq_self (x y : ℕ) : x + y = y → x = 0 := by
  intro h
  nth_rewrite 2 [← zero_add y] at h
  apply add_right_cancel at h
  exact h

Conclusion "Did you use induction on `y`?
Here's a two-line proof of `add_left_eq_self` which uses `add_right_cancel`.
If you want to inspect it, you can go into editor mode by clicking `</>` in the top right
and then just cut and paste the proof and move your cursor around it
to see the hypotheses and goal at any given point
(although you'll lose your own proof this way). Click `>_` to get
back to command line mode.
```
nth_rewrite 2 [← zero_add y]
exact add_right_cancel x 0 y
```
"
