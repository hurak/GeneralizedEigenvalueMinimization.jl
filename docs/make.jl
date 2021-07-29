using GeneralizedEigenvalueMinimization
using Documenter

DocMeta.setdocmeta!(GeneralizedEigenvalueMinimization, :DocTestSetup, :(using GeneralizedEigenvalueMinimization); recursive=true)

makedocs(;
    modules=[GeneralizedEigenvalueMinimization],
    authors="Zdeněk Hurák <hurak@fel.cvut.cz>",
    repo="https://github.com/hurak/GeneralizedEigenvalueMinimization.jl/blob/{commit}{path}#{line}",
    sitename="GeneralizedEigenvalueMinimization.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://hurak.github.io/GeneralizedEigenvalueMinimization.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/hurak/GeneralizedEigenvalueMinimization.jl",
    devbranch="master",
)
