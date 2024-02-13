import Game.Levels.AdvAddition.L01add_right_cancel

World "AdvAddition"
Level 2
Title "add_left_cancel"

namespace MyNat

TheoremTab "+"

/-- `add_left_cancel a b n` is the theorem that $n+a=n+b \\implies a=b.$ -/
TheoremDoc MyNat.add_left_cancel as "add_left_cancel" in "+"

Introduction
"`add_left_cancel a b n` is the theorem that $n+a=n+b\\implies a=b$.
You can prove it by induction on `n` or you can deduce it from `add_right_cancel`.
"

/-- $n+a=n+b\implies a=b$. -/
Statement add_left_cancel (a b n : ℕ) : n + a = n + b → a = b := by
  repeat rw [add_comm n]
  intro h
  apply add_right_cancel at h
  exact h

Conclusion
"How about this for a proof:
```
repeat rw [add_comm n]
exact add_right_cancel a b n
```
"
