# This file was generated, do not modify it. # hide
__result = begin # hide
  
f = Figure(resolution = (800, 500))
ax = Axis(f[1, 1])
Colorbar(f[1, 2])
colsize!(f.layout, 1, Aspect(1, 1.0))
f

  end # hide
  save(joinpath(@OUTPUT, "example_2418299792394839457.png"), __result) # hide
  save(joinpath(@OUTPUT, "example_2418299792394839457.svg"), __result) # hide
  nothing # hide