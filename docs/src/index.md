# gmsh.jl

`gmsh.jl` wraps the Gmsh binaries (`gmsh_jll.jl`) and API in one registered package.
The registered package just packs and gathers already built software. Issues related to Gmsh needs to be reported [here](https://gitlab.onelab.info/gmsh/gmsh).

## Top Level Functions

The developers of gmsh decided to split all functionalities across modules. However, a few top level functions exists:

```@docs
gmsh.initialize
gmsh.finalize
gmsh.open
gmsh.merge
gmsh.write
gmsh.clear
```
