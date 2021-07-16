module GeneralizedEigenvalueMinimization

using Convex
using LinearAlgebra

include("bracketing_evp.jl")

export minimize_gev_bracket

end
