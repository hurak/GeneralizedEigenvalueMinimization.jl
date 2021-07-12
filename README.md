# GeneralizedEigenvalueMinimization.jl

<!--[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://hurak.github.io/GeneralizedEigenvalueProblem.jl/stable)-->
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://hurak.github.io/GeneralizedEigenvalueProblem.jl/dev)
[![Build Status](https://github.com/hurak/GeneralizedEigenvalueProblem.jl/workflows/CI/badge.svg)](https://github.com/hurak/GeneralizedEigenvalueProblem.jl/actions)
[![Coverage](https://codecov.io/gh/hurak/GeneralizedEigenvalueProblem.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/hurak/GeneralizedEigenvalueProblem.jl)

A Julia package for solving the following optimization problem

```math
minimize λ
over x∈Rⁿ, λ∈R

subject to
λA(x)-B(x)≻0
B(x)≻0
C(x)≻0

where A(), B() and C() are affine functions of x.
```

The package implements the *Method of centers for minimizing generalized eigenvalues* described in

- Boyd, Stephen, and Laurent El Ghaoui. “Method of Centers for Minimizing Generalized Eigenvalues.” Linear Algebra and Its Applications 188–189 (July 1, 1993): 63–111. https://doi.org/10.1016/0024-3795(93)90465-Z. Also available online at https://web.stanford.edu/~boyd/papers/gevc.html.

The method is also implemented in Robust Control Toolbox for Matlab as [gevp](https://www.mathworks.com/help/robust/ref/gevp.html) function (internally relying on LMI Toolbox).
