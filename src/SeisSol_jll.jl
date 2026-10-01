# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule SeisSol_jll
using Base
using Base: UUID
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("SeisSol")
JLLWrappers.@generate_main_file("SeisSol", Base.UUID("a1017a48-0939-598d-8201-e404095a05ce"))
end  # module SeisSol_jll
