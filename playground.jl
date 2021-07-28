a₀ = [1.0 2.0; 2.0 3.0]
a₁ = [1.0 0.0; 0.0 1.0]
a₂ = [4.0 5.0; 5.0 6.0]
a = [a₀,a₁,a₂]

b₀ = [1.0 5.0; 5.0 5.0]
b₁ = [2.0 3.0; 3.0 4.0]
b₂ = [5.0 1.0; 1.0 6.0]
b = [b₀,b₁,b₂]

c₀ = [1.0 3.0; 3.0 1.0]
c₁ = [2.0 0.0; 0.0 3.0]
c₂ = [4.0 5.0; 5.0 1.0]
c = [c₀,c₁,c₂]

n = 2

using Convex
using SCS

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

using LinearAlgebra

evaluate(A)
