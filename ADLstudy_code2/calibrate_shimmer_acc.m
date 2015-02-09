function calib_data = calibrate_shimmer_acc(sensor,acc_data)   


    switch sensor

        case 'ecg'
            b0 = 2072.522943
            b1 = 1998.668831
            b2 = 2092.574042
            k0 = 2.181625
            k1 = 5.265940
            k2 = 7.635189
            r00 = -0.003137
            r01 = 0.946116
            r02 = 0.323812
            r10 = 0.002789
            r11 = 0.863045
            r12 = 0.505120
            r20 = -0.001960
            r21 = -0.078101
            r22 = 0.996944

            
        case 'ankleR'
            
            b0 = 2042.397154
            b1 = 2104.614247
            b2 = 1985.688020
            k0 = 27.161140
            k1 = 26.618745
            k2 = 24.825450
            r00 = -0.998018
            r01 = 0.008032
            r02 = -0.062422
            r10 = -0.005177
            r11 = -0.999936
            r12 = 0.010026
            r20 = 0.005775
            r21 = -0.045907
            r22 = 0.998929

        case 'sync'

            b0 = 2140.541127
            b1 = 2082.829782
            b2 = 2026.699774
            k0 = 34.130256
            k1 = 13.313273
            k2 = 11.813797
            r00 = -0.460280
            r01 = 0.794008
            r02 = 0.397107
            r10 = -0.085457
            r11 = 0.001760
            r12 = 0.996340
            r20 = 0.996115
            r21 = 0.010083
            r22 = 0.087484
            
        case 'wristL'
            
%before ADL0013E
            b0 = 2013.594226    
            b1 = 2090.397242    
            b2 = 1980.302368    
            k0 = 26.014586    
            k1 = 20.373939    
            k2 = 24.612198    
            r00 = 0.030418    
            r01 = -0.993155    
            r02 = 0.112776    
            r10 = -0.014387    
            r11 = -0.007935    
            r12 = -0.999865    
            r20 = -0.999945    
            r21 = -0.003267    
            r22 = 0.009964   

% %starting with ADL0013E            
%             b0 = 2053.771179
%             b1 = 2080.387004
%             b2 = 1995.551722
%             k0 = 26.583571
%             k1 = 25.827599
%             k2 = 25.936167
%             r00 = -0.999287
%             r01 = -0.000338
%             r02 = -0.037745
%             r10 = -0.011698
%             r11 = -0.999890
%             r12 = 0.009141
%             r20 = 0.001119
%             r21 = 0.043708
%             r22 = 0.999044            
            
        case 'wristR'

%before ADL0013E
            b0 = 2034.766601
            b1 = 2091.279150
            b2 = 1982.991765
            k0 = 25.491805
            k1 = 26.369717
            k2 = 25.784772
            r00 = -0.999976
            r01 = -0.006671
            r02 = -0.001789
            r10 = -0.002428
            r11 = -0.999576
            r12 = 0.029006
            r20 = -0.012842
            r21 = -0.046441
            r22 = 0.998838

% %starting with ADL0013E            
%             b0 = 2012.371154
%             b1 = 2135.343077
%             b2 = 2003.408333
%             k0 = 26.762661
%             k1 = 27.528144
%             k2 = 25.766364
%             r00 = -0.999798
%             r01 = 0.000568
%             r02 = -0.020080
%             r10 = -0.009588
%             r11 = -0.999949
%             r12 = -0.003322
%             r20 = -0.008035
%             r21 = -0.057646
%             r22 = 0.998305

    end
    
    b=[b0;b1;b2];
    K=[k0,0,0;0,k1,0;0,0,k2];
    R = [r00,r01,r02;r10,r11,r12;r20,r21,r22];
            
    calib_data = acc_data;
    for i = 1 : size(calib_data,1)
        calib_data(i,1:3) = (R'*K'*(acc_data(i,1:3)'-b))'/10000;
    end


end