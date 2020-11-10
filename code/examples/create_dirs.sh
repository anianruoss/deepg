old_dir=modelnet40_64p_rotation_3d_alpha_1_beta_1_gamma_1_intervals_1_implicit_intervals_25_eps_0.0000001

for theta in 2 3 4 5 15 30 45 60 75 90
do
    new_dir=modelnet40_64p_rotation_3d_alpha_${theta}_beta_${theta}_gamma_${theta}_intervals_1_implicit_intervals_25_eps_0.0000001
    cp -r ${old_dir} ${new_dir}
    sed -i "s/Rotation3d(-1,1,-1,1,-1,1)/Rotation3d(-${theta},${theta},-${theta},${theta},-${theta},${theta})/" ${new_dir}/config.txt
done

offset=60

for alpha in $(seq 0 $offset 180)
do
    for beta in $(seq 0 $offset 180)
    do
        for gamma in $(seq 0 $offset 180)
        do
            new_dir=modelnet40_64p_rotation_3d_alpha_${alpha}_$(($alpha + $offset))_beta_${beta}_$(($beta + $offset))_gamma_${gamma}_$(($gamma + $offset))_intervals_1_implicit_intervals_25_eps_0.0000001
            cp -r ${old_dir} ${new_dir}
            sed -i "s/Rotation3d(-1,1,-1,1,-1,1)/Rotation3d(${alpha},$(($alpha + $offset)),${beta},$(($beta + $offset)),${gamma},$(($gamma + $offset)))/" ${new_dir}/config.txt
        done
    done
done

