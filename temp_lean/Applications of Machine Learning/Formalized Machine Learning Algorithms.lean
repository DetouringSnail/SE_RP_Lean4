--Simplified linear regression algorithm
def linear_regression (x y : list ℝ) : ℝ :=
let n := x.length in
let x_sum := list.sum x in
let y_sum := list.sum y in
let xy_sum := (x.zip y).map (λ ⟨xi, yi⟩, xi * yi) in
let x_squared_sum := (x.map (λ xi, xi * xi)).sum in
let m := (n * list.sum xy_sum - x_sum * y_sum) / (n * x_squared_sum - x_sum * x_sum) in
let b := (y_sum - m * x_sum) / n in
m * x.head + b