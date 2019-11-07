using BenchmarkTools

b = @benchmark Base.inferencebarrier(==)(1, 1)

@assert length(ARGS) == 1 "Must pass name in ARGV ('experiment'/'baseline')"

using Plots
display(histogram(sort(b.times), xlims=(9,20), labels=[ARGS[1]]))

display(b)
