# gmsh.jl

[![][docs-dev-img]][docs-dev-url]

[docs-dev-img]: https://img.shields.io/badge/docs-dev-blue.svg

[docs-dev-url]: http://koehlerson.github.io/gmsh.jl/dev/


gmsh.jl contains the `libgmsh.so`/`gmsh.dll`
artifact and Julia API `gmsh.jl` for Gmsh: a three-dimensional finite element mesh generator.
Currently, only the built-in geometry kernel is supported in `gmsh_jll.jl`.

All credits go to the Gmsh devs. This package only copy pasted the `gmsh.jl` API and used `BinaryBuilder.jl` and `Yggdrasil` 
to deploy the binaries.

**Important**: All functionalities related to GUI and OpenCASCADE are **not supported** by the artifacts of the package. 
OpenCASCADE support will be added in Future. Linux users can already utilize it by having a proper OpenCASCADE installation in their `PATH`.

## Installation

```
]add https://github.com/koehlerson/gmsh.jl.git
```

## Example

```julia
using gmsh
```

After that, follow the commented examples in `examples`. The `tutorial/t1.jl` from the [official Gmsh repository](https://gitlab.onelab.info/gmsh/gmsh)
can be realized with this package as follows:

```julia
gmsh.initialize()
gmsh.option.setNumber("General.Terminal", 1)
gmsh.model.add("t1")
lc = 1e-2
gmsh.model.geo.addPoint(0, 0, 0, lc, 1)
gmsh.model.geo.addPoint(.1, 0,  0, lc, 2)
gmsh.model.geo.addPoint(.1, .3, 0, lc, 3)
gmsh.model.geo.addPoint(0, .3, 0, lc, 4)
gmsh.model.geo.addLine(1, 2, 1)
gmsh.model.geo.addLine(3, 2, 2)
gmsh.model.geo.addLine(3, 4, 3)
gmsh.model.geo.addLine(4, 1, 4)
gmsh.model.geo.addCurveLoop([4, 1, -2, 3], 1)
gmsh.model.geo.addPlaneSurface([1], 1)
gmsh.model.addPhysicalGroup(0, [1, 2], 1)
gmsh.model.addPhysicalGroup(1, [1, 2], 2)
gmsh.model.addPhysicalGroup(2, [1], 6)
gmsh.model.setPhysicalName(2, 6, "My surface")
gmsh.model.geo.synchronize()
gmsh.model.mesh.generate(2)
gmsh.write("t1.msh")
gmsh.finalize()
```
