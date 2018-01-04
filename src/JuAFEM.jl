__precompile__()

module JuAFEM
using ForwardDiff
using Reexport
@reexport using Tensors
@reexport using WriteVTK

import Base: show, push!, @propagate_inbounds

"""
Represents a reference shape which quadrature rules and interpolations are defined on.
Currently, the only concrete types that subtype this type are `RefCube` in 1, 2 and 3 dimensions,
and `RefTetrahedron` in 2 and 3 dimensions.
"""
abstract type AbstractRefShape end

struct RefTetrahedron <: AbstractRefShape end
struct RefCube <: AbstractRefShape end

"""
Abstract type which has `CellValues` and `FaceValues` as subtypes
"""
abstract type Values{dim,T,refshape} end
abstract type CellValues{dim,T,refshape} <: Values{dim,T,refshape} end
abstract type FaceValues{dim,T,refshape} <: Values{dim,T,refshape} end

  using Boot

  include_folder(JuAFEM, @__FILE__, verbose=true)

end # module
