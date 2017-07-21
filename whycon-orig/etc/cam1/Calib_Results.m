% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 309.601928854162510 ; 307.316378727440110 ];

%-- Principal point:
cc = [ 319.500000000000000 ; 239.500000000000000 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.072133015923730 ; 0.005032038817512 ; -0.022213906870684 ; -0.017433297889060 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 7.915675569768456 ; 8.384952761261456 ];

%-- Principal point uncertainty:
cc_error = [ 0.000000000000000 ; 0.000000000000000 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.022675617008376 ; 0.032560597483641 ; 0.002576867379508 ; 0.001987341745660 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 23;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 0;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 2.276063e+00 ; 1.921268e+00 ; -2.604011e-01 ];
Tc_1  = [ -2.411847e+02 ; 1.425190e+01 ; 5.230224e+02 ];
omc_error_1 = [ 1.657874e-02 ; 1.743097e-02 ; 3.316226e-02 ];
Tc_error_1  = [ 7.785760e-01 ; 7.704152e-01 ; 1.586897e+01 ];

%-- Image #2:
omc_2 = [ 2.156079e+00 ; 1.777179e+00 ; -3.845260e-01 ];
Tc_2  = [ -2.348677e+02 ; 4.076615e+01 ; 5.297244e+02 ];
omc_error_2 = [ 1.500812e-02 ; 1.547241e-02 ; 2.896409e-02 ];
Tc_error_2  = [ 7.244268e-01 ; 8.543949e-01 ; 1.586319e+01 ];

%-- Image #3:
omc_3 = [ -2.312769e+00 ; -1.663586e+00 ; -1.971981e-01 ];
Tc_3  = [ -2.428542e+02 ; -1.250673e+02 ; 4.848759e+02 ];
omc_error_3 = [ 1.752888e-02 ; 1.024515e-02 ; 3.020869e-02 ];
Tc_error_3  = [ 6.535851e-01 ; 7.298591e-01 ; 1.511605e+01 ];

%-- Image #4:
omc_4 = [ -2.490597e+00 ; -1.753690e+00 ; -3.567199e-01 ];
Tc_4  = [ -1.584329e+02 ; -1.686744e+02 ; 4.356192e+02 ];
omc_error_4 = [ 2.508819e-02 ; 1.372438e-02 ; 4.171024e-02 ];
Tc_error_4  = [ 6.781162e-01 ; 1.086030e+00 ; 1.370046e+01 ];

%-- Image #5:
omc_5 = [ -2.088515e+00 ; -1.657984e+00 ; 1.447642e-01 ];
Tc_5  = [ -1.500404e+02 ; -1.965154e+02 ; 5.489946e+02 ];
omc_error_5 = [ 1.328078e-02 ; 1.006182e-02 ; 2.392333e-02 ];
Tc_error_5  = [ 8.658002e-01 ; 8.547567e-01 ; 1.581423e+01 ];

%-- Image #6:
omc_6 = [ -1.975140e+00 ; -1.565093e+00 ; -3.056471e-01 ];
Tc_6  = [ -1.163736e+02 ; -2.119704e+02 ; 4.159485e+02 ];
omc_error_6 = [ 1.443426e-02 ; 1.160461e-02 ; 2.393631e-02 ];
Tc_error_6  = [ 3.721887e-01 ; 1.202474e+00 ; 1.347357e+01 ];

%-- Image #7:
omc_7 = [ -2.380778e+00 ; -1.876395e+00 ; -3.704059e-01 ];
Tc_7  = [ -1.627879e+02 ; -2.111556e+02 ; 4.537568e+02 ];
omc_error_7 = [ 2.700601e-02 ; 1.550362e-02 ; 4.287433e-02 ];
Tc_error_7  = [ 6.398224e-01 ; 1.255572e+00 ; 1.456618e+01 ];

%-- Image #8:
omc_8 = [ -1.998815e+00 ; -1.772974e+00 ; 1.444227e-01 ];
Tc_8  = [ -9.999508e+01 ; -2.579672e+02 ; 5.014772e+02 ];
omc_error_8 = [ 1.397769e-02 ; 1.076893e-02 ; 2.475885e-02 ];
Tc_error_8  = [ 8.147270e-01 ; 1.002551e+00 ; 1.523355e+01 ];

%-- Image #9:
omc_9 = [ 2.470719e+00 ; 1.585874e+00 ; 5.094047e-01 ];
Tc_9  = [ -2.974191e+02 ; -1.799902e+02 ; 4.457825e+02 ];
omc_error_9 = [ 1.681253e-02 ; 2.279585e-02 ; 3.829395e-02 ];
Tc_error_9  = [ 1.714318e+00 ; 1.299071e+00 ; 1.580139e+01 ];

%-- Image #10:
omc_10 = [ -2.625801e+00 ; -1.692266e+00 ; -2.695392e-01 ];
Tc_10  = [ -2.637143e+02 ; -1.590795e+02 ; 5.452788e+02 ];
omc_error_10 = [ 3.137664e-02 ; 1.171972e-02 ; 5.171756e-02 ];
Tc_error_10  = [ 8.046203e-01 ; 1.015825e+00 ; 1.741094e+01 ];

%-- Image #11:
omc_11 = [ -2.436777e+00 ; -1.636180e+00 ; -2.399470e-01 ];
Tc_11  = [ -2.396090e+02 ; -1.883373e+02 ; 5.085716e+02 ];
omc_error_11 = [ 2.520634e-02 ; 1.197378e-02 ; 4.264234e-02 ];
Tc_error_11  = [ 5.590618e-01 ; 1.008097e+00 ; 1.631870e+01 ];

%-- Image #12:
omc_12 = [ -2.102641e+00 ; -1.746606e+00 ; -1.252175e-01 ];
Tc_12  = [ -1.414175e+02 ; -2.405157e+02 ; 4.695792e+02 ];
omc_error_12 = [ 1.837715e-02 ; 1.344491e-02 ; 3.150488e-02 ];
Tc_error_12  = [ 5.888074e-01 ; 1.017628e+00 ; 1.490550e+01 ];

%-- Image #13:
omc_13 = [ 2.176123e+00 ; 1.848121e+00 ; -4.258775e-01 ];
Tc_13  = [ -1.593170e+02 ; -1.208471e+02 ; 5.684590e+02 ];
omc_error_13 = [ 1.050142e-02 ; 1.226023e-02 ; 2.056236e-02 ];
Tc_error_13  = [ 5.167343e-01 ; 8.204330e-01 ; 1.642561e+01 ];

%-- Image #14:
omc_14 = [ 2.351559e+00 ; 1.920518e+00 ; -3.126143e-01 ];
Tc_14  = [ -1.172109e+02 ; -1.378577e+02 ; 5.518453e+02 ];
omc_error_14 = [ 1.361212e-02 ; 1.447853e-02 ; 2.745907e-02 ];
Tc_error_14  = [ 4.711082e-01 ; 7.883785e-01 ; 1.616293e+01 ];

%-- Image #15:
omc_15 = [ -2.368868e+00 ; -1.701946e+00 ; 3.252905e-02 ];
Tc_15  = [ -1.354527e+02 ; -2.157224e+02 ; 4.930958e+02 ];
omc_error_15 = [ 1.909249e-02 ; 1.088553e-02 ; 3.210933e-02 ];
Tc_error_15  = [ 5.411513e-01 ; 9.808516e-01 ; 1.530159e+01 ];

%-- Image #16:
omc_16 = [ -2.240397e+00 ; -1.832068e+00 ; 1.571960e-01 ];
Tc_16  = [ -1.781066e+02 ; -1.156846e+02 ; 4.943089e+02 ];
omc_error_16 = [ 1.351872e-02 ; 9.897365e-03 ; 2.550266e-02 ];
Tc_error_16  = [ 7.055564e-01 ; 5.286731e-01 ; 1.443601e+01 ];

%-- Image #17:
omc_17 = [ 2.514786e+00 ; 1.796467e+00 ; 1.756794e-01 ];
Tc_17  = [ -2.390355e+02 ; -1.063210e+02 ; 4.633351e+02 ];
omc_error_17 = [ 1.655083e-02 ; 1.946666e-02 ; 3.972138e-02 ];
Tc_error_17  = [ 5.756951e-01 ; 6.172521e-01 ; 1.473020e+01 ];

%-- Image #18:
omc_18 = [ -2.196511e+00 ; -1.724140e+00 ; 2.563888e-01 ];
Tc_18  = [ -1.079499e+02 ; -1.481669e+02 ; 5.114400e+02 ];
omc_error_18 = [ 1.400059e-02 ; 1.073925e-02 ; 2.635735e-02 ];
Tc_error_18  = [ 7.159496e-01 ; 6.438802e-01 ; 1.451318e+01 ];

%-- Image #19:
omc_19 = [ -2.203190e+00 ; -1.737808e+00 ; -2.982605e-01 ];
Tc_19  = [ -2.294675e+02 ; -1.995734e+02 ; 4.211052e+02 ];
omc_error_19 = [ 1.756150e-02 ; 1.033086e-02 ; 3.036730e-02 ];
Tc_error_19  = [ 5.424404e-01 ; 9.272470e-01 ; 1.409888e+01 ];

%-- Image #20:
omc_20 = [ 2.169081e+00 ; 1.856438e+00 ; -3.381501e-01 ];
Tc_20  = [ -1.792794e+02 ; 2.157290e+01 ; 5.315868e+02 ];
omc_error_20 = [ 1.814468e-02 ; 1.732025e-02 ; 3.380468e-02 ];
Tc_error_20  = [ 4.575467e-01 ; 8.109026e-01 ; 1.565801e+01 ];

%-- Image #21:
omc_21 = [ 2.316289e+00 ; 1.756248e+00 ; 1.339326e-01 ];
Tc_21  = [ -2.206941e+02 ; -1.131111e+02 ; 4.729831e+02 ];
omc_error_21 = [ 1.460894e-02 ; 1.798418e-02 ; 3.073449e-02 ];
Tc_error_21  = [ 7.320060e-01 ; 6.414291e-01 ; 1.481481e+01 ];

%-- Image #22:
omc_22 = [ -2.390857e+00 ; -1.800848e+00 ; -1.572670e-01 ];
Tc_22  = [ -1.864552e+02 ; -1.890124e+02 ; 4.396812e+02 ];
omc_error_22 = [ 1.951923e-02 ; 1.039695e-02 ; 3.305913e-02 ];
Tc_error_22  = [ 3.944610e-01 ; 8.364063e-01 ; 1.410940e+01 ];

%-- Image #23:
omc_23 = [ 2.256358e+00 ; 1.888930e+00 ; -2.771405e-01 ];
Tc_23  = [ -1.756815e+02 ; -1.070323e+02 ; 5.197525e+02 ];
omc_error_23 = [ 1.177565e-02 ; 1.369488e-02 ; 2.437333e-02 ];
Tc_error_23  = [ 4.617768e-01 ; 6.843590e-01 ; 1.531742e+01 ];

