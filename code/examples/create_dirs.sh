# RotationZ
old_dir=modelnet40_64p_rotation_z_theta_1_intervals_1_eps_0.0000001

for theta in 2 3 5
do
    new_dir=modelnet40_64p_rotation_z_theta_${theta}_intervals_1_eps_0.0000001
    cp -r ${old_dir} ${new_dir}
    sed -i "s/RotationZ(-1,1)/RotationZ(-${theta},${theta})/" ${new_dir}/config.txt
done

for theta in 10 20 30
do
    new_dir=modelnet40_64p_rotation_z_theta_${theta}_intervals_${theta}_eps_0.0000001
    cp -r ${old_dir} ${new_dir}
    sed -i "s/RotationZ(-1,1)/RotationZ(-${theta},${theta})/" ${new_dir}/config.txt
    sed -i "s/chunks                1/chunks                ${theta}/" ${new_dir}/config.txt
done


# RotationZ; RotationX
old_dir=modelnet40_64p_rotation_z_x_theta_1_intervals_1_eps_0.0000001

for theta in 2 3 5
do
    new_dir=modelnet40_64p_rotation_z_x_theta_${theta}_intervals_1_eps_0.0000001
    cp -r ${old_dir} ${new_dir}
    sed -i "s/RotationX(-1,1)/RotationX(-${theta},${theta})/" ${new_dir}/config.txt
    sed -i "s/RotationZ(-1,1)/RotationZ(-${theta},${theta})/" ${new_dir}/config.txt
done

for theta in 2 3 4 5
do
    new_dir=modelnet40_64p_rotation_z_x_theta_${theta}_intervals_${theta}_eps_0.0000001
    cp -r ${old_dir} ${new_dir}
    sed -i "s/RotationX(-1,1)/RotationX(-${theta},${theta})/" ${new_dir}/config.txt
    sed -i "s/RotationZ(-1,1)/RotationZ(-${theta},${theta})/" ${new_dir}/config.txt
    sed -i "s/chunks                1/chunks                ${theta}/" ${new_dir}/config.txt
done


# RotationZ; RotationY; RotationX
old_dir=modelnet40_64p_rotation_z_y_x_theta_1_intervals_1_eps_0.0000001

for theta in 1.5 2
do
    new_dir=modelnet40_64p_rotation_z_y_x_theta_${theta}_intervals_1_eps_0.0000001
    cp -r ${old_dir} ${new_dir}
    sed -i "s/RotationX(-1,1)/RotationX(-${theta},${theta})/" ${new_dir}/config.txt
    sed -i "s/RotationY(-1,1)/RotationY(-${theta},${theta})/" ${new_dir}/config.txt
    sed -i "s/RotationZ(-1,1)/RotationZ(-${theta},${theta})/" ${new_dir}/config.txt
done

for theta in 2 3
do
    old_dir=modelnet40_64p_rotation_z_y_x_theta_${theta}_intervals_${theta}_eps_0.0000001
    cp -r ${old_dir} ${new_dir}
    sed -i "s/RotationX(-1,1)/RotationX(-${theta},${theta})/" ${new_dir}/config.txt
    sed -i "s/RotationY(-1,1)/RotationY(-${theta},${theta})/" ${new_dir}/config.txt
    sed -i "s/RotationZ(-1,1)/RotationZ(-${theta},${theta})/" ${new_dir}/config.txt
    sed -i "s/chunks                1/chunks                ${theta}/" ${new_dir}/config.txt
done


# ShearZ
old_dir=modelnet40_64p_shearing_z_theta_0.01_intervals_1_eps_0.0000001

for theta in 0.02 0.03
do
    new_dir=modelnet40_64p_shearing_z_theta_${theta}_intervals_1_eps_0.0000001
    cp -r ${old_dir} ${new_dir}
    sed -i "s/ShearZ(-0.01,0.01,-0.01,0.01)/ShearZ(-${theta},${theta},-${theta},${theta})/" ${new_dir}/config.txt
done


# TaperingZ; RotationZ
old_dir=modelnet40_64p_tapering_z_rotation_z_theta_0.1_1_intervals_1_eps_0.0000001

for theta in 0.2 0.3
do
    new_dir=modelnet40_64p_tapering_z_rotation_z_theta_${theta}_1_intervals_1_eps_0.0000001
    cp -r ${old_dir} ${new_dir}
    sed -i "s/TaperingZ(-0.1,0.1,-0.1,0.1)/TaperingZ(-${theta},${theta},-${theta},${theta})/" ${new_dir}/config.txt
done


# TaperingZ
old_dir=modelnet40_64p_tapering_z_theta_0.1_intervals_1_eps_0.0000001

for theta in 0.2 0.3
do
    new_dir=modelnet40_64p_tapering_z_theta_${theta}_intervals_1_eps_0.0000001
    cp -r ${old_dir} ${new_dir}
    sed -i "s/TaperingZ(-0.1,0.1,-0.1,0.1)/TaperingZ(-${theta},${theta},-${theta},${theta})/" ${new_dir}/config.txt
done


# TwistingZ; RotationZ
old_dir=modelnet40_64p_twisting_z_rotation_z_theta_10_1_intervals_1_eps_0.0000001

for theta in 20 30
do
    new_dir=modelnet40_64p_twisting_z_rotation_z_theta_${theta}_1_intervals_1_eps_0.0000001
    cp -r ${old_dir} ${new_dir}
    sed -i "s/TwistingZ(-10,10)/TwistingZ(-${theta},${theta})/" ${new_dir}/config.txt
done


# TwistingZ; TaperingZ; RotationZ
old_dir=modelnet40_64p_twisting_z_tapering_z_rotation_z_theta_10_0.1_1_intervals_1_eps_0.0000001

for theta in 2 3
do
    new_dir=modelnet40_64p_twisting_z_tapering_z_rotation_z_theta_${theta}0_0.${theta}_1_intervals_1_eps_0.0000001
    cp -r ${old_dir} ${new_dir}
    sed -i "s/TwistingZ(-10,10)/TwistingZ(-${theta}0,${theta}0)/" ${new_dir}/config.txt
    sed -i "s/TaperingZ(-0.1,0.1,-0.1,0.1)/TaperingZ(-0.${theta},0.${theta},-0.${theta},0.${theta})/" ${new_dir}/config.txt
done


# TwistingZ
old_dir=modelnet40_64p_twisting_z_theta_10_intervals_1_eps_0.0000001

for theta in 20 30
do
    new_dir=modelnet40_64p_twisting_z_rotation_z_theta_${theta}_1_intervals_1_eps_0.0000001
    cp -r ${old_dir} ${new_dir}
    sed -i "s/TwistingZ(-10,10)/TwistingZ(-${theta},${theta})/" ${new_dir}/config.txt
done
