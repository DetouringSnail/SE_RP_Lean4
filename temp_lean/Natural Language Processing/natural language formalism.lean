inductive word : Type
| hello : word
| world : word
| lean : word

-- Defining Syntactic Structures
inductive sentence : Type
| simple : word → sentence
| compound : word → sentence → sentence

-- Defining Semantic Relationships
def semantics : word → string
| word.hello := "Hello"
| word.world := "World"
| word.lean := "Lean"