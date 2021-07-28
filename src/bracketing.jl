"""
    λmin,xmin = minimize_geig_bracketing(A,B,C,λ₀,x₀)

Minimize the (maximum) generalized eigenvalue for a pair of matrices `A`, `B` under the additional constraint that `B`≻0 and `C`≻0.

All the three matrices are actually affine functions of a vector `x`, that is, `A(x) = A₀+A₁x₁+…+Aₙxₙ` (and the same holds for `B(x)` and `C(x)`). They are entered as (1D) arrays of matrices.

An initial guesses for the upper bound on generalized eigenvalues `λ₀` and the solution vector `x₀` must be provided.

# Example
```julia
A₀ = [1.0 2.0; 2.0 3.0]
A₁ = [1.0 0.0; 0.0 1.0]
A₂ = [4.0 5.0; 5.0 6.0]
A = [A₀,A₁,A₂]

B₀ = [1.0 5.0; 5.0 5.0]
B₁ = [2.0 3.0; 3.0 4.0]
B₂ = [5.0 1.0; 1.0 6.0]
B = [B₀,B₁,B₂]

C₀ = [1.0 3.0; 3.0 1.0]
C₁ = [2.0 0.0; 0.0 3.0]
C₂ = [4.0 5.0; 5.0 1.0]
C = [C₀,C₁,C₂]
```
"""
function minimize_geig_bracketing(A,B,C,λ₀,x₀)
   n = 2
   x = Variable(n)
   A = a[1] + x[1]*a[2] + x[2]*a[3]
   B = b[1] + x[1]*b[2] + x[2]*b[3]
   C = c[1] + x[1]*c[2] + x[2]*c[3]
   for λ = 5.0:-0.1:0.7
       constr1 = (λ*B-A ⪰ 0)
       constr2 = (B ⪰ 0)
       constr3 = (C ⪰ 0)
       problem = satisfy([constr1,constr2,constr3])
       solve!(problem,SCS.Optimizer(verbose=false))
       @show λ
       @show evaluate(x)
   end
end
