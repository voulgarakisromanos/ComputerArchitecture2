function cost_function(DCS,ICS,L2S,DCA,ICA,L2A)
    # Cache sizes in kb, Cache associativity in n-way
    L2_size_coeff = 1;
    L1_size_coeff = 5;
    assoc_coeff = 3;

    L1i_cost = ICS * L1_size_coeff + assoc_coeff * ICA;
    L1d_cost = DCS * L1_size_coeff + assoc_coeff * DCA;
    L2_cost = L2S * L2_size_coeff + assoc_coeff * L2A

    total_cost = L1d_cost + L1i_cost + L2_cost;

    return total_cost
end


libm_cost = cost_function(128,16,1024,1,1,1)
bzip_cost = cost_function(32,16,128,1,1,1)
sjeng_cost = cost_function(128,16,128,2,1,1)
mcf_cost = cost_function(64,64,128,1,2,1)
println(libm_cost)
println(bzip_cost)
println(sjeng_cost)
println(mcf_cost)