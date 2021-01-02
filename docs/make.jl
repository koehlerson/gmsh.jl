push!(LOAD_PATH,"../src/")
using Documenter, gmsh

include("generate.jl")

GENERATEDEXAMPLES = [joinpath("examples", f) for f in (
    "t1.md",
    "t2.md",
    "t3.md",
    "t4.md",
    "t5.md",
    "t10.md",
    #"t16.md"
    )]

makedocs(sitename="Gmsh API for Julia",
         modules=[gmsh],
         authors="Maximilian Köhler",
         pages=["Home"=> "index.md",
                "Tutorial" => GENERATEDEXAMPLES,
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
