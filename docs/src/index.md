![Makie](assets/logo.png)

## Welcome to Makie!

Makie is a high-performance, extendable, and multi-platform plotting ecosystem for the [Julia](https://julialang.org/) programming language.

## Installation and Import

Add one or more of the Makie backend packages [`GLMakie.jl`](https://github.com/JuliaPlots/GLMakie.jl) (OpenGL), [`CairoMakie.jl`](https://github.com/JuliaPlots/CairoMakie.jl) (Cairo), or [`WGLMakie.jl`](https://github.com/JuliaPlots/WGLMakie.jl) (WebGL).

```julia
]add GLMakie
using GLMakie
```

If you want to switch to a different backend in a running session, call that backend's `activate!` function.

```julia
]add CairoMakie
using CairoMakie
# if, for example, GLMakie is activated already
CairoMakie.activate!()
```

## First Steps

- Learn the basics of plotting with Makie in the [Basic Tutorial](@ref)
- Check out how to make more complex plots and layouts in the [Layout Tutorial](@ref)

```@eval
using Markdown
using Pkg

function print_dep_version(depname)
    deps = Pkg.dependencies()
    version = first(d for d in deps if d.second.name == depname).second.version

    "$depname: v$version"
end

Markdown.parse("""
!!! note
    These docs were autogenerated using:
      - $(print_dep_version("Makie"))
      - $(print_dep_version("GLMakie"))
      - $(print_dep_version("CairoMakie"))

    If you encounter errors with the code examples, check first that your installed versions are appropriate.
""")
```

## Makie Ecosystem

| Package                                                        | Description                                                                                         |
| :------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------- |
| [`Makie.jl`](https://github.com/JuliaPlots/Makie.jl)           | Defines all infrastructure objects which can be visualized using one of the three backend packages. |
| [`GLMakie.jl`](https://github.com/JuliaPlots/GLMakie.jl)       | GPU-powered, interactive 2D and 3D plotting in standalone `GLFW.jl` windows.                        |
| [`CairoMakie.jl`](https://github.com/JuliaPlots/CairoMakie.jl) | `Cairo.jl` based, non-interactive 2D backend for publication-quality vector graphics.               |
| [`WGLMakie.jl`](https://github.com/JuliaPlots/WGLMakie.jl)     | WebGL-based interactive 2D and 3D plotting that runs within browsers.                               |

The differences between backends are explained in more details under [Backends & Output](@ref).

### Extension Packages

These packages are maintained by third parties. If you install them, keep an eye on version conflicts or downgrades as the Makie ecosystem is developing quickly so things break occasionally.

| Package                                                                       | Description                                              |
| :---------------------------------------------------------------------------- | :------------------------------------------------------- |
| [`AlgebraOfGraphics.jl`](https://github.com/JuliaPlots/AlgebraOfGraphics.jl/) | Grammar-of-graphics style plotting, inspired by ggplot2. |
| [`GeoMakie.jl`](https://github.com/JuliaPlots/GeoMakie.jl)                    | Geographic plotting utilities. Currently not maintained. |

## Getting Help

1. Use the REPL `?` help mode.
1. Click this link to open a preformatted topic on the [Julia Discourse Page](https://discourse.julialang.org/new-topic?title=Makie%20-%20Your%20question%20here&category=domain/viz&tags=Makie&body=You%20can%20write%20your%20question%20in%20this%20space.%0A%0ABefore%20asking%2C%20please%20take%20a%20minute%20to%20make%20sure%20that%20you%20have%20installed%20the%20latest%20available%20versions%20and%20have%20looked%20at%20%5Bthe%20most%20recent%20documentation%5D(http%3A%2Fmakie.juliaplots.org%2Fstable%2F)%20%3Ainnocent%3A). If you do this manually, please use the category Domain/Visualization and tag questions with `Makie` to increase their visibility.
1. For casual conversation about Makie and its development, have a look at the `#makie` channel in the [Julia Slack group](https://julialang.org/slack/). Please direct your usage questions to [Discourse](https://discourse.julialang.org/new-topic?title=Makie%20-%20Your%20question%20here&category=domain/viz&tags=Makie&body=You%20can%20write%20your%20question%20in%20this%20space.%0A%0ABefore%20asking%2C%20please%20take%20a%20minute%20to%20make%20sure%20that%20you%20have%20installed%20the%20latest%20available%20versions%20and%20have%20looked%20at%20%5Bthe%20most%20recent%20documentation%5D(http%3A%2Fmakie.juliaplots.org%2Fstable%2F)%20%3Ainnocent%3A) and not to Slack, to make questions and answers accessible to everybody.
1. For technical issues and bug reports, open an issue in the [Makie.jl](https://github.com/JuliaPlots/Makie.jl) repository which serves as the central hub for Makie and backend issues.