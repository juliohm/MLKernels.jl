#===================================================================================================
  Kernel Functions Module
===================================================================================================#

module MLKernels

import Base: show, exp, eltype, isposdef, convert, promote #, call

export
    # Functions
    description,
    kernel,
    kernel_dx,
    kernel_dy,
    kernel_dp,
    kernel_dxdy,
    kernelmatrix,
    kernelmatrix_dx,
    kernelmatrix_dy,
    kernelmatrix_dp,
    kernelmatrix_dxdy,
    scprodmatrix,
    sqdistmatrix,
    center_kernelmatrix!,
    center_kernelmatrix,

    # Types
    Kernel,
        SimpleKernel,
            StandardKernel,
                SquaredDistanceKernel,
	                GaussianKernel, SquaredExponentialKernel,
	                LaplacianKernel, ExponentialKernel,
            	    RationalQuadraticKernel,
            	    MultiQuadraticKernel,
            	    InverseMultiQuadraticKernel,
            	    PowerKernel,
            	    LogKernel,
                ScalarProductKernel,
	                LinearKernel,
	                PolynomialKernel,
            	    SigmoidKernel,
                SeparableKernel,
                    MercerSigmoidKernel,
            ScaledKernel,
        CompositeKernel,
            KernelProduct,
            KernelSum

include("vectorfunctions.jl")
include("matrixfunctions.jl")
include("kernels.jl")
include("kernelmatrix.jl")
include("kernelapprox.jl")
include("kernelmatrixderiv.jl")

end # MLKernels
