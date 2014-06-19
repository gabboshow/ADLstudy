function calib_data = calibrate_shimmer_acc(sensor,acc_data)   


    switch sensor

        case 'ECG1'

            b0 = 1930.350513;
            b1 = 2074.376619;
            b2 = 1725.327290;
            k0 = 97.219594;
            k1 = 95.669110;
            k2 = 98.902315;
            r00 = -0.999804;
            r01 = -0.012299;
            r02 = 0.015500;
            r10 = 0.001737;
            r11 = -0.998817;
            r12 = 0.048600;
            r20 = 0.039748;
            r21 = -0.044053;
            r22 = 0.998238;
            
        case 'AnkleR'
            
            b0 = 2039.111883;
            b1 = 2078.917232;
            b2 = 1729.032906;
            k0 = 103.186596;
            k1 = 99.229507;
            k2 = 99.455393;
            r00 = -0.998273;
            r01 = 0.002695;
            r02 = -0.058678;
            r10 = -0.009654;
            r11 = -0.999865;
            r12 = 0.013299;
            r20 = -0.007107;
            r21 = -0.033050;
            r22 = 0.999428;

        case 'Sync'

            b0 = 2003.983660;
            b1 = 2085.058824;
            b2 = 1683.549020;
            k0 = 99.788675;
            k1 = 96.648415;
            k2 = 100.440363;
            r00 = -0.999642;
            r01 = -0.015439;
            r02 = 0.021875;
            r10 = -0.001242;
            r11 = -0.998657;
            r12 = 0.051796;
            r20 = 0.062888;
            r21 = 0.012171;
            r22 = 0.997946;
            
        case 'WristL'

            b0 = 1924.882448;
            b1 = 2170.525191;
            b2 = 1834.180849;
            k0 = 101.085846;
            k1 = 98.424972;
            k2 = 95.155199;
            r00 = -0.999655;
            r01 = -0.000233;
            r02 = -0.026246;
            r10 = -0.004810;
            r11 = -0.999987;
            r12 = 0.001387;
            r20 = 0.000097;
            r21 = -0.059643;
            r22 = 0.998220;
            
        case 'WristR'

                b0 = 1986.423480;
                b1 = 2131.394932;
                b2 = 1766.778086;
                k0 = 100.464585;
                k1 = 99.387093;
                k2 = 96.361745;
                r00 = -0.999980;
                r01 = 0.005925;
                r02 = -0.002101;
                r10 = -0.012060;
                r11 = -0.999423;
                r12 = 0.031757;
                r20 = -0.005605;
                r21 = -0.048784;
                r22 = 0.998794;

    end
    
    b=[b0;b1;b2];
    K=[k0,0,0;0,k1,0;0,0,k2];
    R = [r00,r01,r02;r10,r11,r12;r20,r21,r22];
            
    calib_data = acc_data;
    for i = 1 : size(calib_data,1)
        calib_data(i,1:3) = (R'*K'*(acc_data(i,1:3)'-b))';
    end


end