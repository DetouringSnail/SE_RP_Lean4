import data.nat.basic


theorem add_comm : ∀ (a b : ℕ), a + b = b + a :=
begin
  -- Introducing natural numbers a and b
  intros a b,
  -- Analyze b by induction
  induction b with b' ih,
  -- Base case: b = 0
  { rw [nat.add_zero, nat.zero_add] },
  -- Inductive case: b = b' + 1
  { rw [nat.add_succ, ih, nat.succ_add] }
end
