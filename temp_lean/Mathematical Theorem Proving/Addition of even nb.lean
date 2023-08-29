import data.nat.basic

-- Definition of an even number
def is_even (n : ℕ) : Prop := ∃ (k : ℕ), n = 2 * k

-- Theorem that an even number plus an even number equals an even number
theorem even_plus_even_is_even (a b : ℕ) (ha : is_even a) (hb : is_even b) : is_even (a + b) :=
begin
  cases ha with k₁ hk₁,
  cases hb with k₂ hk₂,
  use k₁ + k₂,
  rw [hk₁, hk₂, mul_add],
end