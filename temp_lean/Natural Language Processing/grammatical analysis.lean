def parse_sentence : list word → option sentence
| [] := none
| [w] := some (sentence.simple w)
| (w1 :: w2 :: rest) :=
  match w1, parse_sentence (w2 :: rest) with
  | word.hello, some s := some (sentence.compound w1 s)
  | _, _ := none
  end