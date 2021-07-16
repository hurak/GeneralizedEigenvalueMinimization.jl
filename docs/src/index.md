```@meta
CurrentModule = GeneralizedEigenvalueMinimization
```

# GeneralizedEigenvalueMinimization

Documentation for [GeneralizedEigenvalueMinimization](https://github.com/hurak/GeneralizedEigenvalueMinimization.jl) Julia package for minimizing the generalized eigenvalues.

## Problem statement

```math
\begin{aligned}
\mathrm{minimize} &\qquad \lambda\\
\mathrm{subject to} &\qquad \lambda \boldsymbol B(\boldsymbol x) - \boldsymbol A(\boldsymbol x) \succeq \boldsymbol 0,\\
                    &\qquad \boldsymbol B(\boldsymbol x) \succeq \boldsymbol0,\\
                    &\qquad \boldsymbol C(\boldsymbol x) \succeq \boldsymbol 0,
\end{aligned}
```
where ``\lambda\in\mathbb R``, ``\boldsymbol x\in \mathbb R^n``, ``\boldsymbol A()``, ``\boldsymbol B()`` and ``\boldsymbol C()`` are affine functions of ``\boldsymbol x``.

## Functions

```@autodocs
Modules = [GeneralizedEigenvalueMinimization]
```

## Index

```@index
```
