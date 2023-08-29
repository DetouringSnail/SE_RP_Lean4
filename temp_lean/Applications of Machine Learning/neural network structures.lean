-- Defining Neural Network Layers
structure neural_layer :=
(input_dim : ℕ)
(output_dim : ℕ)
(weights : matrix ℚ input_dim output_dim)
(biases : vector ℚ output_dim)
(activation : vector ℚ output_dim → vector ℚ output_dim)

-- Define a simple neural network
def simple_nn : neural_layer :=
{
  input_dim := 2,
  output_dim := 3,
  weights := ⟨[1, 2, 3, 4, 5, 6], rfl⟩,
  biases := vector.vec_of_fn (λ _, 0),
  activation := λ x, x
}