# This file is a part of Julia. License is MIT: https://julialang.org/license

module TestFactorization

using Test, LinearAlgebra

let F = svd(rand(2,3))
    @test size(Adjoint(F)) == (3,2)
    @test size(Transpose(F)) == (3,2)

    @test Factorization{eltype(F)}(F) === F
end

end
