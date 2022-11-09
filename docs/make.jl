using xlab
using Documenter

DocMeta.setdocmeta!(xlab, :DocTestSetup, :(using xlab); recursive=true)

makedocs(;
    modules=[xlab],
    authors="ssdipc <sergio.sanchez@dipc.org> and contributors",
    repo="https://github.com/ssdipc/xlab.jl/blob/{commit}{path}#{line}",
    sitename="xlab.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://ssdipc.github.io/xlab.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/ssdipc/xlab.jl",
    devbranch="main",
)
