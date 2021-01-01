push!(LOAD_PATH,"../src/")
using Documenter, gmsh

makedocs(sitename="Gmsh API for Julia",
         modules=[gmsh],
         authors="Maximilian Köhler",
         pages=["Home"=> "index.md",
                "Built-in Geometry Kernel" => Any["Geometry" => "geo/geometry.md", 
                                                  "Mesh Constraints" => "geo/mesh.md"],
                "Model" => Any["Model" => "model/model.md", 
                               "Meshing" => "model/mesh.md"],
                "Options" => "options/options.md",
                "OpenCASCADE Kernel" => "occ/occ.md"])
deploydocs(
    repo = "github.com/koehlerson/gmsh.jl.git",
    push_preview=true,
)
