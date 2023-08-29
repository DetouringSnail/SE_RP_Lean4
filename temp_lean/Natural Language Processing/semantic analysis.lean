def same_semantics : sentence → sentence → bool
| (sentence.simple w1) (sentence.simple w2) := w1 = w2
| (sentence.compound w1 s1) (sentence.compound w2 s2) :=
  w1 = w2 && same_semantics s1 s2
| _ _ := false