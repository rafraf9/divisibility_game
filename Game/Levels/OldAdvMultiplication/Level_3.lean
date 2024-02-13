import Game.Levels.AdvMultiplication.Level_2



World "AdvMultiplication"
Level 3
Title "mul_eq_zero_iff"

open MyNat

Introduction
"
Now you have `eq_zero_or_eq_zero_of_mul_eq_zero` this is pretty straightforward.
"

/-- $ab = 0$, if and only if at least one of $a$ or $b$ is equal to zero.
 -/
Statement
    {a b : ℕ} : a * b = 0 ↔ a = 0 ∨ b = 0 := by
  constructor
  intro h
  exact eq_zero_or_eq_zero_of_mul_eq_zero a b h
  intro hab
  rcases hab with hab | hab
  rw [hab]
  rw [MyNat.zero_mul]
  rfl
  rw [hab]
  rw [MyNat.mul_zero]
  rfl


Conclusion
"

"
