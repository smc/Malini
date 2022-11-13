from fontFeatures import *

ff = FontFeatures()
letter=["a", "b"]
r0 = Routine(rules=[Substitution([["f"],["x"],["t"]], [["f_i.begin"]])])

rules = [
    Chaining([["f"], ["x"], ["t"]], postcontext=[letter], lookups=[]),
    Chaining([["f"], ["x"], ["t"]], lookups=[None, [ff.referenceRoutine(r0)], None]),
]

ff.addFeature(
    "rlig",
    [
        Routine(rules=rules)
    ],
)

print(ff.asFeaAST())
