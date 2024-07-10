function crystalnets_play()
    topo_paths = [
        "/Users/joshgoldman/Documents/Research/AI4ChemS/Tilings/CrystalNets.jl/inputs/acs_sym_7_mc_4__L_3.cif",
        "/Users/joshgoldman/Documents/Research/AI4ChemS/Tilings/CrystalNets.jl/inputs/csq_sym_5_on_13_sym_8_mc_8_L_12.cif",
    ]
    opts = Options(
        bonding=Bonding.Input,
        structure=StructureType.MOF,
        clusterings=[Clustering.SingleNodes],
        export_input=false,
        export_trimmed=false,
        export_attributions=false,
        export_clusters=false,
        export_net=false,
        export_subnets=false,
        skip_minimize=false,
        dimensions=Set(3),
        throw_error=true,
        track_mapping=Vector{Int}(),
        _pos=SVector{3,Float64}[],
    )

    g = parse(PeriodicGraph3D, "3 1 2 1 0 0 1 4 0 0 0 1 6 0 0 0 1 8 1 0 0 2 3 -1 -1 -1 2 5 0 0 -1 2 7 0 -1 0 3 4 0 1 0 3 6 0 0 1 3 8 1 0 0 4 5 0 0 0 4 7 0 -1 0 5 6 0 0 1 5 8 0 0 0 6 7 0 0 0 7 8 0 0 0")

    res = compute_net_genome(g)
end