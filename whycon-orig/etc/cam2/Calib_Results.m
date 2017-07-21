% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 310.855853507064350 ; 309.712183651575800 ];

%-- Principal point:
cc = [ 329.726847066116360 ; 207.669341046509740 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.023451136480626 ; 0.015633069326818 ; -0.005074859964603 ; 0.002117334283119 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 2.351415230371520 ; 2.415669743511716 ];

%-- Principal point uncertainty:
cc_error = [ 2.913133516929189 ; 2.434885762666315 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.007609575787307 ; 0.009243525421083 ; 0.002046480380000 ; 0.002612256882911 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 20;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 2.074422e+00 ; 2.072707e+00 ; -7.037469e-01 ];
Tc_1  = [ 1.760035e+01 ; 1.183751e+02 ; 6.575890e+02 ];
omc_error_1 = [ 9.477624e-03 ; 7.550951e-03 ; 1.672898e-02 ];
Tc_error_1  = [ 6.223750e+00 ; 5.268989e+00 ; 5.125506e+00 ];

%-- Image #2:
omc_2 = [ -1.863689e+00 ; -2.014531e+00 ; 6.662115e-01 ];
Tc_2  = [ -4.128589e+01 ; -1.815658e+01 ; 6.941561e+02 ];
omc_error_2 = [ 7.510775e-03 ; 7.184754e-03 ; 1.259703e-02 ];
Tc_error_2  = [ 6.468004e+00 ; 5.451041e+00 ; 5.243341e+00 ];

%-- Image #3:
omc_3 = [ -2.397662e+00 ; -1.898638e+00 ; -3.051579e-02 ];
Tc_3  = [ 3.136973e+01 ; -2.215739e+02 ; 5.192281e+02 ];
omc_error_3 = [ 8.058709e-03 ; 6.952775e-03 ; 1.547978e-02 ];
Tc_error_3  = [ 5.157893e+00 ; 4.116518e+00 ; 4.732523e+00 ];

%-- Image #4:
omc_4 = [ -2.275205e+00 ; -2.136851e+00 ; 2.630851e-01 ];
Tc_4  = [ -2.178990e+01 ; -2.030225e+02 ; 5.667184e+02 ];
omc_error_4 = [ 8.152946e-03 ; 5.535511e-03 ; 1.528338e-02 ];
Tc_error_4  = [ 5.466071e+00 ; 4.419841e+00 ; 4.976298e+00 ];

%-- Image #5:
omc_5 = [ -2.065667e+00 ; -1.709580e+00 ; 1.908360e-01 ];
Tc_5  = [ 6.927694e+01 ; -2.300214e+02 ; 6.746313e+02 ];
omc_error_5 = [ 9.588832e-03 ; 8.915757e-03 ; 1.923397e-02 ];
Tc_error_5  = [ 6.530852e+00 ; 5.334819e+00 ; 5.716530e+00 ];

%-- Image #6:
omc_6 = [ -1.863611e+00 ; -1.293458e+00 ; 1.532211e-02 ];
Tc_6  = [ 1.124324e+02 ; -2.643298e+02 ; 6.449124e+02 ];
omc_error_6 = [ 7.783857e-03 ; 7.198083e-03 ; 1.111090e-02 ];
Tc_error_6  = [ 6.381894e+00 ; 5.162675e+00 ; 5.737632e+00 ];

%-- Image #7:
omc_7 = [ -1.824949e+00 ; -1.534058e+00 ; 6.862834e-01 ];
Tc_7  = [ 2.578779e+02 ; -1.130141e+02 ; 7.721299e+02 ];
omc_error_7 = [ 7.351705e-03 ; 7.012089e-03 ; 1.208327e-02 ];
Tc_error_7  = [ 7.538177e+00 ; 6.215550e+00 ; 6.000079e+00 ];

%-- Image #8:
omc_8 = [ -2.182216e+00 ; -1.741701e+00 ; 7.188951e-01 ];
Tc_8  = [ 1.075896e+02 ; -8.769720e+01 ; 7.160269e+02 ];
omc_error_8 = [ 8.491333e-03 ; 6.059324e-03 ; 1.465504e-02 ];
Tc_error_8  = [ 6.805676e+00 ; 5.613353e+00 ; 5.317648e+00 ];

%-- Image #9:
omc_9 = [ -2.308185e+00 ; -1.979914e+00 ; 7.105547e-01 ];
Tc_9  = [ 1.171974e+02 ; -2.441559e+01 ; 6.669314e+02 ];
omc_error_9 = [ 8.429396e-03 ; 6.754133e-03 ; 1.570455e-02 ];
Tc_error_9  = [ 6.342985e+00 ; 5.236275e+00 ; 5.110416e+00 ];

%-- Image #10:
omc_10 = [ -2.230019e+00 ; -1.950736e+00 ; 6.733395e-01 ];
Tc_10  = [ 4.269416e+01 ; -8.320287e+01 ; 5.498015e+02 ];
omc_error_10 = [ 7.663334e-03 ; 4.912186e-03 ; 1.305453e-02 ];
Tc_error_10  = [ 5.194203e+00 ; 4.262505e+00 ; 4.174383e+00 ];

%-- Image #11:
omc_11 = [ 1.991452e+00 ; 1.729649e+00 ; -9.789103e-01 ];
Tc_11  = [ 3.026221e+01 ; 4.624668e+01 ; 6.199834e+02 ];
omc_error_11 = [ 5.733000e-03 ; 6.814126e-03 ; 1.126812e-02 ];
Tc_error_11  = [ 5.818672e+00 ; 4.873190e+00 ; 4.398109e+00 ];

%-- Image #12:
omc_12 = [ 1.998825e+00 ; 1.675450e+00 ; -1.207749e+00 ];
Tc_12  = [ -7.525293e+00 ; 1.076464e+02 ; 6.271900e+02 ];
omc_error_12 = [ 5.266167e-03 ; 7.413556e-03 ; 1.127349e-02 ];
Tc_error_12  = [ 5.905994e+00 ; 4.979145e+00 ; 4.374554e+00 ];

%-- Image #13:
omc_13 = [ 2.073153e+00 ; 1.302212e+00 ; -7.683802e-01 ];
Tc_13  = [ 5.021459e+00 ; 1.339895e+02 ; 5.633006e+02 ];
omc_error_13 = [ 6.484846e-03 ; 5.487857e-03 ; 1.048864e-02 ];
Tc_error_13  = [ 5.381896e+00 ; 4.533274e+00 ; 4.363566e+00 ];

%-- Image #14:
omc_14 = [ -2.451707e+00 ; -1.637344e+00 ; 7.132605e-01 ];
Tc_14  = [ 4.850284e+01 ; -8.771634e+00 ; 6.380651e+02 ];
omc_error_14 = [ 8.436415e-03 ; 5.528896e-03 ; 1.500256e-02 ];
Tc_error_14  = [ 6.002216e+00 ; 4.981588e+00 ; 4.704526e+00 ];

%-- Image #15:
omc_15 = [ -2.187697e+00 ; -1.477872e+00 ; 1.126487e+00 ];
Tc_15  = [ 2.515944e+01 ; 2.359328e+02 ; 7.946211e+02 ];
omc_error_15 = [ 8.893667e-03 ; 6.577964e-03 ; 1.101646e-02 ];
Tc_error_15  = [ 7.639475e+00 ; 6.384705e+00 ; 6.132035e+00 ];

%-- Image #16:
omc_16 = [ 2.349415e+00 ; 1.873643e+00 ; -7.570270e-01 ];
Tc_16  = [ 4.250512e-01 ; 2.043541e+02 ; 9.535523e+02 ];
omc_error_16 = [ 1.204024e-02 ; 8.776313e-03 ; 2.104833e-02 ];
Tc_error_16  = [ 9.053058e+00 ; 7.661264e+00 ; 7.453045e+00 ];

%-- Image #17:
omc_17 = [ -1.740152e+00 ; -2.061309e+00 ; 1.674862e-01 ];
Tc_17  = [ -1.021094e+02 ; -1.787108e+02 ; 6.945948e+02 ];
omc_error_17 = [ 7.202572e-03 ; 7.460319e-03 ; 1.501700e-02 ];
Tc_error_17  = [ 6.570626e+00 ; 5.473497e+00 ; 6.042169e+00 ];

%-- Image #18:
omc_18 = [ 2.020020e+00 ; 2.260570e+00 ; -5.212346e-01 ];
Tc_18  = [ -1.060675e+02 ; -1.265825e+02 ; 6.033534e+02 ];
omc_error_18 = [ 4.672328e-03 ; 8.078188e-03 ; 1.455389e-02 ];
Tc_error_18  = [ 5.672993e+00 ; 4.729259e+00 ; 5.086195e+00 ];

%-- Image #19:
omc_19 = [ 2.114693e+00 ; 1.943639e+00 ; -1.031090e+00 ];
Tc_19  = [ 1.169521e+02 ; -2.442011e+01 ; 8.227583e+02 ];
omc_error_19 = [ 6.611992e-03 ; 7.608055e-03 ; 1.338827e-02 ];
Tc_error_19  = [ 7.768096e+00 ; 6.463930e+00 ; 5.946680e+00 ];

%-- Image #20:
omc_20 = [ 2.276339e+00 ; 1.893277e+00 ; -3.838317e-01 ];
Tc_20  = [ -1.423818e+02 ; -3.959658e+01 ; 4.533532e+02 ];
omc_error_20 = [ 5.528922e-03 ; 6.498253e-03 ; 1.299301e-02 ];
Tc_error_20  = [ 4.229237e+00 ; 3.604955e+00 ; 4.071656e+00 ];

