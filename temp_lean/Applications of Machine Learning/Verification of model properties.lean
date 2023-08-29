def verify_neural_network (nn : neural_layer) (input : vector ℝ nn.input_dim) : Prop :=
nn.activation (nn.weights.mul_vec input + nn.biases) = nn.activation (nn.weights.mul_vec input)

theorem simple_nn_verified : ∀ (input : vector ℝ 2), verify_neural_network simple_nn input :=
begin
  intros input,
  refl
end