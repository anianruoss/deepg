old_dir=modelnet40_64p_rotation_theta_1_intervals_1_eps_0.0000001

for eps in 0.0001 0.00001 0.000001 0.0000001
do
    experiment_dir=rotation_1024p_${eps}
    mkdir ${experiment_dir}

    for theta in 1 2 3 4 5 15 30 45 60 75 90
    do
        new_dir=${experiment_dir}/modelnet40_1024p_rotation_theta_${theta}_intervals_1_eps_${eps}
        cp -r ${old_dir} ${new_dir}
        sed -i "s/RotationZ(-1,1);RotationY(-1,1);RotationX(-1,1)/RotationZ(-${theta},${theta});RotationY(-${theta},${theta});RotationX(-${theta},${theta})/" ${new_dir}/config.txt
        sed -i "s/num_points            64/num_points            1024/" ${new_dir}/config.txt
        sed -i "s/poly_eps              0.0000001/poly_eps              ${eps}/" ${new_dir}/config.txt
    done
done

old_dir=modelnet40_64p_shearing_theta_1_intervals_1_eps_0.0000001

for eps in 0.0001 0.00001 0.000001 0.0000001
do
    experiment_dir=shearing_1024p_${eps}
    mkdir ${experiment_dir}

    for theta in 1 2 3 4 5 15 30 45 60 75 90
    do
        new_dir=${experiment_dir}/modelnet40_1024p_shearing_theta_${theta}_intervals_1_eps_${eps}
        cp -r ${old_dir} ${new_dir}
        sed -i "s/ShearZ(-1,1,-1,1);ShearY(-1,1,-1,1);ShearX(-1,1,-1,1)/ShearZ(-${theta},${theta},-${theta},${theta});ShearY(-${theta},${theta},-${theta},${theta});ShearX(-${theta},${theta},-${theta},${theta})/" ${new_dir}/config.txt
        sed -i "s/num_points            64/num_points            1024/" ${new_dir}/config.txt
        sed -i "s/poly_eps              0.0000001/poly_eps              ${eps}/" ${new_dir}/config.txt
    done
done

old_dir=modelnet40_64p_twisting_theta_1_intervals_1_eps_0.0000001

for eps in 0.0001 0.00001 0.000001 0.0000001
do
    experiment_dir=twisting_1024p_${eps}
    mkdir ${experiment_dir}

    for theta in 1 2 3 4 5 15 30 45 60 75 90
    do
        new_dir=${experiment_dir}/modelnet40_1024p_twisting_theta_${theta}_intervals_1_eps_${eps}
        cp -r ${old_dir} ${new_dir}
        sed -i "s/TwistingZ(-1,1)/TwistingZ(-${theta},${theta})/" ${new_dir}/config.txt
        sed -i "s/num_points            64/num_points            1024/" ${new_dir}/config.txt
        sed -i "s/poly_eps              0.0000001/poly_eps              ${eps}/" ${new_dir}/config.txt
    done
done

old_dir=modelnet40_64p_tapering_theta_1_intervals_1_eps_0.0000001

for eps in 0.0001 0.00001 0.000001 0.0000001
do
    experiment_dir=tapering_1024p_${eps}
    mkdir ${experiment_dir}

    for theta in 1 2 3 4 5 15 30 45 60 75 90
    do
        new_dir=${experiment_dir}/modelnet40_1024p_tapering_theta_${theta}_intervals_1_eps_${eps}
        cp -r ${old_dir} ${new_dir}
        sed -i "s/TaperingZ(-1,1,-1,1)/TaperingZ(-${theta},${theta},-${theta},${theta})/" ${new_dir}/config.txt
        sed -i "s/num_points            64/num_points            1024/" ${new_dir}/config.txt
        sed -i "s/poly_eps              0.0000001/poly_eps              ${eps}/" ${new_dir}/config.txt
    done
done

