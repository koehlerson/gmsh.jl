using Test, gmsh

@testset "test_t1.jl" begin 
    include("../examples/t1.jl") 
    @test filesize("t1.msh") > 0
end
@testset "test_t2.jl" begin 
    include("../examples/t2.jl")    
    @test filesize("t2.msh") > 0
end
@testset "test_t3.jl" begin 
    include("../examples/t3.jl") 
    @test filesize("t3.msh") > 0
end
@testset "test_t4.jl" begin 
    include("../examples/t4.jl") 
    @test filesize("t4.msh") > 0
end
@testset "test_t5.jl" begin 
    include("../examples/t5.jl") 
    @test filesize("t5.msh") > 0
end
#@testset "test_t10.jl" begin 
#    include("../examples/t10.jl") 
#    @test filesize("t10.msh") > 0
#end
#@testset "test_t16.jl" begin 
#    include("../examples/t16.jl") 
#    @test filesize("t16.msh") > 0
#end
