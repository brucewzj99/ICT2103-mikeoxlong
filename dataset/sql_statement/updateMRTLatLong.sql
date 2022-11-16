ALTER TABLE MRT_Station 
ADD COLUMN Latitude DOUBLE AFTER BusStopCode,
ADD COLUMN Longitude DOUBLE AFTER Latitude;

UPDATE MRT_Station SET Latitude = 1.3845, Longitude = 103.7709 WHERE StnCode = 'BP10'; 
UPDATE MRT_Station SET Latitude = 1.3877, Longitude = 103.7696 WHERE StnCode = 'BP11'; 
UPDATE MRT_Station SET Latitude = 1.3867, Longitude = 103.7644 WHERE StnCode = 'BP12'; 
UPDATE MRT_Station SET Latitude = 1.3829, Longitude = 103.7624 WHERE StnCode = 'BP13'; 
UPDATE MRT_Station SET Latitude = 1.3803, Longitude = 103.7452 WHERE StnCode = 'BP2'; 
UPDATE MRT_Station SET Latitude = 1.3786, Longitude = 103.7490 WHERE StnCode = 'BP3'; 
UPDATE MRT_Station SET Latitude = 1.3767, Longitude = 103.7537 WHERE StnCode = 'BP4'; 
UPDATE MRT_Station SET Latitude = 1.3785, Longitude = 103.7576 WHERE StnCode = 'BP5'; 
UPDATE MRT_Station SET Latitude = 1.3777, Longitude = 103.7666 WHERE StnCode = 'BP7'; 
UPDATE MRT_Station SET Latitude = 1.3762, Longitude = 103.7713 WHERE StnCode = 'BP8'; 
UPDATE MRT_Station SET Latitude = 1.3801, Longitude = 103.7727 WHERE StnCode = 'BP9'; 
UPDATE MRT_Station SET Latitude = 1.2989, Longitude = 103.8455 WHERE StnCode = 'CC1'; 
UPDATE MRT_Station SET Latitude = 1.3267, Longitude = 103.8900 WHERE StnCode = 'CC10'; 
UPDATE MRT_Station SET Latitude = 1.3359, Longitude = 103.8878 WHERE StnCode = 'CC11'; 
UPDATE MRT_Station SET Latitude = 1.3423, Longitude = 103.8802 WHERE StnCode = 'CC12'; 
UPDATE MRT_Station SET Latitude = 1.3517, Longitude = 103.8639 WHERE StnCode = 'CC14'; 
UPDATE MRT_Station SET Latitude = 1.3490, Longitude = 103.8391 WHERE StnCode = 'CC16'; 
UPDATE MRT_Station SET Latitude = 1.3374, Longitude = 103.8398 WHERE StnCode = 'CC17'; 
UPDATE MRT_Station SET Latitude = 1.3223, Longitude = 103.8149 WHERE StnCode = 'CC19'; 
UPDATE MRT_Station SET Latitude = 1.2975, Longitude = 103.8504 WHERE StnCode = 'CC2'; 
UPDATE MRT_Station SET Latitude = 1.3174, Longitude = 103.8078 WHERE StnCode = 'CC20'; 
UPDATE MRT_Station SET Latitude = 1.3111, Longitude = 103.7961 WHERE StnCode = 'CC21'; 
UPDATE MRT_Station SET Latitude = 1.3072, Longitude = 103.7906 WHERE StnCode = 'CC22'; 
UPDATE MRT_Station SET Latitude = 1.2990, Longitude = 103.7871 WHERE StnCode = 'CC23'; 
UPDATE MRT_Station SET Latitude = 1.2934, Longitude = 103.7843 WHERE StnCode = 'CC24'; 
UPDATE MRT_Station SET Latitude = 1.2830, Longitude = 103.7819 WHERE StnCode = 'CC25'; 
UPDATE MRT_Station SET Latitude = 1.2761, Longitude = 103.7919 WHERE StnCode = 'CC26'; 
UPDATE MRT_Station SET Latitude = 1.2723, Longitude = 103.8031 WHERE StnCode = 'CC27'; 
UPDATE MRT_Station SET Latitude = 1.2708, Longitude = 103.8099 WHERE StnCode = 'CC28'; 
UPDATE MRT_Station SET Latitude = 1.2940, Longitude = 103.8554 WHERE StnCode = 'CC3'; 
UPDATE MRT_Station SET Latitude = 1.2925, Longitude = 103.8604 WHERE StnCode = 'CC4'; 
UPDATE MRT_Station SET Latitude = 1.2999, Longitude = 103.8635 WHERE StnCode = 'CC5'; 
UPDATE MRT_Station SET Latitude = 1.3028, Longitude = 103.8754 WHERE StnCode = 'CC6'; 
UPDATE MRT_Station SET Latitude = 1.3069, Longitude = 103.8825 WHERE StnCode = 'CC7'; 
UPDATE MRT_Station SET Latitude = 1.3083, Longitude = 103.8888 WHERE StnCode = 'CC8'; 
UPDATE MRT_Station SET Latitude = 1.3182, Longitude = 103.8931 WHERE StnCode = 'CC9'; 
UPDATE MRT_Station SET Latitude = 1.2813, Longitude = 103.8589 WHERE StnCode = 'CE1'; 
UPDATE MRT_Station SET Latitude = 1.2761, Longitude = 103.8549 WHERE StnCode = 'CE2'; 
UPDATE MRT_Station SET Latitude = 1.3344, Longitude = 103.9615 WHERE StnCode = 'CG1'; 
UPDATE MRT_Station SET Latitude = 1.3573, Longitude = 103.9884 WHERE StnCode = 'CG2'; 
UPDATE MRT_Station SET Latitude = 1.3199, Longitude = 103.8261 WHERE StnCode = 'DT10'; 
UPDATE MRT_Station SET Latitude = 1.3135, Longitude = 103.8383 WHERE StnCode = 'DT11'; 
UPDATE MRT_Station SET Latitude = 1.3063, Longitude = 103.8494 WHERE StnCode = 'DT12'; 
UPDATE MRT_Station SET Latitude = 1.3036, Longitude = 103.8526 WHERE StnCode = 'DT13'; 
UPDATE MRT_Station SET Latitude = 1.3002, Longitude = 103.8561 WHERE StnCode = 'DT14'; 
UPDATE MRT_Station SET Latitude = 1.2941, Longitude = 103.8603 WHERE StnCode = 'DT15'; 
UPDATE MRT_Station SET Latitude = 1.2813, Longitude = 103.8589 WHERE StnCode = 'DT16'; 
UPDATE MRT_Station SET Latitude = 1.2795, Longitude = 103.8532 WHERE StnCode = 'DT17'; 
UPDATE MRT_Station SET Latitude = 1.2820, Longitude = 103.8487 WHERE StnCode = 'DT18'; 
UPDATE MRT_Station SET Latitude = 1.2848, Longitude = 103.8439 WHERE StnCode = 'DT19'; 
UPDATE MRT_Station SET Latitude = 1.3699, Longitude = 103.7645 WHERE StnCode = 'DT2'; 
UPDATE MRT_Station SET Latitude = 1.2928, Longitude = 103.8445 WHERE StnCode = 'DT20'; 
UPDATE MRT_Station SET Latitude = 1.2985, Longitude = 103.8499 WHERE StnCode = 'DT21'; 
UPDATE MRT_Station SET Latitude = 1.3056, Longitude = 103.8553 WHERE StnCode = 'DT22'; 
UPDATE MRT_Station SET Latitude = 1.3138, Longitude = 103.8629 WHERE StnCode = 'DT23'; 
UPDATE MRT_Station SET Latitude = 1.2795, Longitude = 103.8529 WHERE StnCode = 'DT24'; 
UPDATE MRT_Station SET Latitude = 1.3268, Longitude = 103.8833 WHERE StnCode = 'DT25'; 
UPDATE MRT_Station SET Latitude = 1.3267, Longitude = 103.8900 WHERE StnCode = 'DT26'; 
UPDATE MRT_Station SET Latitude = 1.3300, Longitude = 103.8990 WHERE StnCode = 'DT27'; 
UPDATE MRT_Station SET Latitude = 1.3349, Longitude = 103.9090 WHERE StnCode = 'DT28'; 
UPDATE MRT_Station SET Latitude = 1.3352, Longitude = 103.9180 WHERE StnCode = 'DT29'; 
UPDATE MRT_Station SET Latitude = 1.3631, Longitude = 103.7674 WHERE StnCode = 'DT3'; 
UPDATE MRT_Station SET Latitude = 1.3364, Longitude = 103.9329 WHERE StnCode = 'DT30'; 
UPDATE MRT_Station SET Latitude = 1.3455, Longitude = 103.9382 WHERE StnCode = 'DT31'; 
UPDATE MRT_Station SET Latitude = 1.3556, Longitude = 103.9552 WHERE StnCode = 'DT33'; 
UPDATE MRT_Station SET Latitude = 1.3417, Longitude = 103.9615 WHERE StnCode = 'DT34'; 
UPDATE MRT_Station SET Latitude = 1.3344, Longitude = 103.9615 WHERE StnCode = 'DT35'; 
UPDATE MRT_Station SET Latitude = 1.3417, Longitude = 103.7760 WHERE StnCode = 'DT5'; 
UPDATE MRT_Station SET Latitude = 1.3357, Longitude = 103.7832 WHERE StnCode = 'DT6'; 
UPDATE MRT_Station SET Latitude = 1.3316, Longitude = 103.7970 WHERE StnCode = 'DT7'; 
UPDATE MRT_Station SET Latitude = 1.3256, Longitude = 103.8079 WHERE StnCode = 'DT8'; 
UPDATE MRT_Station SET Latitude = 1.3223, Longitude = 103.8149 WHERE StnCode = 'DT9'; 
UPDATE MRT_Station SET Latitude = 1.3115, Longitude = 103.8714 WHERE StnCode = 'EW10'; 
UPDATE MRT_Station SET Latitude = 1.3073, Longitude = 103.8629 WHERE StnCode = 'EW11'; 
UPDATE MRT_Station SET Latitude = 1.3002, Longitude = 103.8561 WHERE StnCode = 'EW12'; 
UPDATE MRT_Station SET Latitude = 1.2931, Longitude = 103.8520 WHERE StnCode = 'EW13'; 
UPDATE MRT_Station SET Latitude = 1.2839, Longitude = 103.8515 WHERE StnCode = 'EW14'; 
UPDATE MRT_Station SET Latitude = 1.2768, Longitude = 103.8452 WHERE StnCode = 'EW15'; 
UPDATE MRT_Station SET Latitude = 1.2814, Longitude = 103.8392 WHERE StnCode = 'EW16'; 
UPDATE MRT_Station SET Latitude = 1.2857, Longitude = 103.8269 WHERE StnCode = 'EW17'; 
UPDATE MRT_Station SET Latitude = 1.2894, Longitude = 103.8170 WHERE StnCode = 'EW18'; 
UPDATE MRT_Station SET Latitude = 1.2948, Longitude = 103.8058 WHERE StnCode = 'EW19'; 
UPDATE MRT_Station SET Latitude = 1.3024, Longitude = 103.7983 WHERE StnCode = 'EW20'; 
UPDATE MRT_Station SET Latitude = 1.3072, Longitude = 103.7906 WHERE StnCode = 'EW21'; 
UPDATE MRT_Station SET Latitude = 1.3114, Longitude = 103.7786 WHERE StnCode = 'EW22'; 
UPDATE MRT_Station SET Latitude = 1.3424, Longitude = 103.7327 WHERE StnCode = 'EW25'; 
UPDATE MRT_Station SET Latitude = 1.3443, Longitude = 103.7208 WHERE StnCode = 'EW26'; 
UPDATE MRT_Station SET Latitude = 1.3359, Longitude = 103.6917 WHERE StnCode = 'EW28'; 
UPDATE MRT_Station SET Latitude = 1.3432, Longitude = 103.9534 WHERE StnCode = 'EW3'; 
UPDATE MRT_Station SET Latitude = 1.3188, Longitude = 103.6604 WHERE StnCode = 'EW30'; 
UPDATE MRT_Station SET Latitude = 1.3206, Longitude = 103.6491 WHERE StnCode = 'EW31'; 
UPDATE MRT_Station SET Latitude = 1.3300, Longitude = 103.6396 WHERE StnCode = 'EW32'; 
UPDATE MRT_Station SET Latitude = 1.3403, Longitude = 103.6367 WHERE StnCode = 'EW33'; 
UPDATE MRT_Station SET Latitude = 1.3272, Longitude = 103.9465 WHERE StnCode = 'EW4'; 
UPDATE MRT_Station SET Latitude = 1.3210, Longitude = 103.9129 WHERE StnCode = 'EW6'; 
UPDATE MRT_Station SET Latitude = 1.3182, Longitude = 103.8931 WHERE StnCode = 'EW8'; 
UPDATE MRT_Station SET Latitude = 1.3164, Longitude = 103.8829 WHERE StnCode = 'EW9'; 
UPDATE MRT_Station SET Latitude = 1.3313, Longitude = 103.8690 WHERE StnCode = 'NE10'; 
UPDATE MRT_Station SET Latitude = 1.3388, Longitude = 103.8705 WHERE StnCode = 'NE11'; 
UPDATE MRT_Station SET Latitude = 1.3599, Longitude = 103.8851 WHERE StnCode = 'NE13'; 
UPDATE MRT_Station SET Latitude = 1.3829, Longitude = 103.8933 WHERE StnCode = 'NE15'; 
UPDATE MRT_Station SET Latitude = 1.2802, Longitude = 103.8395 WHERE StnCode = 'NE3'; 
UPDATE MRT_Station SET Latitude = 1.2849, Longitude = 103.8440 WHERE StnCode = 'NE4'; 
UPDATE MRT_Station SET Latitude = 1.2887, Longitude = 103.8466 WHERE StnCode = 'NE5'; 
UPDATE MRT_Station SET Latitude = 1.3307, Longitude = 103.7976 WHERE StnCode = 'NE6'; 
UPDATE MRT_Station SET Latitude = 1.3063, Longitude = 103.8494 WHERE StnCode = 'NE7'; 
UPDATE MRT_Station SET Latitude = 1.3124, Longitude = 103.8542 WHERE StnCode = 'NE8'; 
UPDATE MRT_Station SET Latitude = 1.3200, Longitude = 103.8616 WHERE StnCode = 'NE9'; 
UPDATE MRT_Station SET Latitude = 1.4406, Longitude = 103.8010 WHERE StnCode = 'NS10'; 
UPDATE MRT_Station SET Latitude = 1.4433, Longitude = 103.8296 WHERE StnCode = 'NS12'; 
UPDATE MRT_Station SET Latitude = 1.4173, Longitude = 103.8330 WHERE StnCode = 'NS14'; 
UPDATE MRT_Station SET Latitude = 1.3407, Longitude = 103.8467 WHERE StnCode = 'NS18'; 
UPDATE MRT_Station SET Latitude = 1.3204, Longitude = 103.8438 WHERE StnCode = 'NS20'; 
UPDATE MRT_Station SET Latitude = 1.3130, Longitude = 103.8384 WHERE StnCode = 'NS21'; 
UPDATE MRT_Station SET Latitude = 1.3040, Longitude = 103.8318 WHERE StnCode = 'NS22'; 
UPDATE MRT_Station SET Latitude = 1.3005, Longitude = 103.8385 WHERE StnCode = 'NS23'; 
UPDATE MRT_Station SET Latitude = 1.2992, Longitude = 103.8457 WHERE StnCode = 'NS24'; 
UPDATE MRT_Station SET Latitude = 1.2931, Longitude = 103.8520 WHERE StnCode = 'NS25'; 
UPDATE MRT_Station SET Latitude = 1.2830, Longitude = 103.8513 WHERE StnCode = 'NS26'; 
UPDATE MRT_Station SET Latitude = 1.2761, Longitude = 103.8548 WHERE StnCode = 'NS27'; 
UPDATE MRT_Station SET Latitude = 1.2714, Longitude = 103.8636 WHERE StnCode = 'NS28'; 
UPDATE MRT_Station SET Latitude = 1.3588, Longitude = 103.7520 WHERE StnCode = 'NS3'; 
UPDATE MRT_Station SET Latitude = 1.3976, Longitude = 103.7475 WHERE StnCode = 'NS5'; 
UPDATE MRT_Station SET Latitude = 1.4252, Longitude = 103.7620 WHERE StnCode = 'NS7'; 
UPDATE MRT_Station SET Latitude = 1.4325, Longitude = 103.7741 WHERE StnCode = 'NS8'; 
UPDATE MRT_Station SET Latitude = 1.3993, Longitude = 103.9059 WHERE StnCode = 'PE1'; 
UPDATE MRT_Station SET Latitude = 1.3967, Longitude = 103.9089 WHERE StnCode = 'PE2'; 
UPDATE MRT_Station SET Latitude = 1.3937, Longitude = 103.9127 WHERE StnCode = 'PE3'; 
UPDATE MRT_Station SET Latitude = 1.3944, Longitude = 103.9160 WHERE StnCode = 'PE4'; 
UPDATE MRT_Station SET Latitude = 1.3994, Longitude = 103.9165 WHERE StnCode = 'PE5'; 
UPDATE MRT_Station SET Latitude = 1.4022, Longitude = 103.9127 WHERE StnCode = 'PE6'; 
UPDATE MRT_Station SET Latitude = 1.4051, Longitude = 103.9086 WHERE StnCode = 'PE7'; 
UPDATE MRT_Station SET Latitude = 1.4098, Longitude = 103.9049 WHERE StnCode = 'PW1'; 
UPDATE MRT_Station SET Latitude = 1.4126, Longitude = 103.9060 WHERE StnCode = 'PW2'; 
UPDATE MRT_Station SET Latitude = 1.4168, Longitude = 103.9067 WHERE StnCode = 'PW3'; 
UPDATE MRT_Station SET Latitude = 1.4159, Longitude = 103.9022 WHERE StnCode = 'PW4'; 
UPDATE MRT_Station SET Latitude = 1.4118, Longitude = 103.9003 WHERE StnCode = 'PW5'; 
UPDATE MRT_Station SET Latitude = 1.4085, Longitude = 103.8985 WHERE StnCode = 'PW6'; 
UPDATE MRT_Station SET Latitude = 1.4052, Longitude = 103.8976 WHERE StnCode = 'PW7'; 
UPDATE MRT_Station SET Latitude = 1.3944, Longitude = 103.9005 WHERE StnCode = 'SE1'; 
UPDATE MRT_Station SET Latitude = 1.3915, Longitude = 103.9060 WHERE StnCode = 'SE2'; 
UPDATE MRT_Station SET Latitude = 1.3880, Longitude = 103.9051 WHERE StnCode = 'SE3'; 
UPDATE MRT_Station SET Latitude = 1.3837, Longitude = 103.9019 WHERE StnCode = 'SE4'; 
UPDATE MRT_Station SET Latitude = 1.3843, Longitude = 103.8972 WHERE StnCode = 'SE5'; 
UPDATE MRT_Station SET Latitude = 1.3963, Longitude = 103.8938 WHERE StnCode = 'SW1'; 
UPDATE MRT_Station SET Latitude = 1.3971, Longitude = 103.8892 WHERE StnCode = 'SW2'; 
UPDATE MRT_Station SET Latitude = 1.3982, Longitude = 103.8814 WHERE StnCode = 'SW3'; 
UPDATE MRT_Station SET Latitude = 1.3974, Longitude = 103.8756 WHERE StnCode = 'SW4'; 
UPDATE MRT_Station SET Latitude = 1.3919, Longitude = 103.8763 WHERE StnCode = 'SW5'; 
UPDATE MRT_Station SET Latitude = 1.3940, Longitude = 103.8797 WHERE StnCode = 'SW6'; 
UPDATE MRT_Station SET Latitude = 1.3893, Longitude = 103.8859 WHERE StnCode = 'SW7'; 
UPDATE MRT_Station SET Latitude = 1.3867, Longitude = 103.8905 WHERE StnCode = 'SW8'; 
UPDATE MRT_Station SET Latitude = 1.3851, Longitude = 103.7443 WHERE StnCode = 'TE1'; 
UPDATE MRT_Station SET Latitude = 1.4274, Longitude = 103.7931 WHERE StnCode = 'TE3'; 
UPDATE MRT_Station SET Latitude = 1.3974, Longitude = 103.8185 WHERE StnCode = 'TE4'; 
UPDATE MRT_Station SET Latitude = 1.3844, Longitude = 103.8368 WHERE StnCode = 'TE5'; 
UPDATE MRT_Station SET Latitude = 1.2930, Longitude = 103.8560 WHERE StnCode = 'TE6'; 
UPDATE MRT_Station SET Latitude = 1.3632, Longitude = 103.8332 WHERE StnCode = 'TE7'; 
UPDATE MRT_Station SET Latitude = 1.3540, Longitude = 103.8338 WHERE StnCode = 'TE8'; 
UPDATE MRT_Station SET Latitude = 1.3374, Longitude = 103.8398 WHERE StnCode = 'TE9'; 
UPDATE MRT_Station SET Latitude = 1.2650, Longitude = 103.8215 WHERE StnCode = 'CC29'; 
UPDATE MRT_Station SET Latitude = 1.2653, Longitude = 103.8223 WHERE StnCode = 'NE1'; 
UPDATE MRT_Station SET Latitude = 1.3154, Longitude = 103.7651 WHERE StnCode = 'EW23'; 
UPDATE MRT_Station SET Latitude = 1.3386, Longitude = 103.7060 WHERE StnCode = 'EW27'; 
UPDATE MRT_Station SET Latitude = 1.3277, Longitude = 103.6783 WHERE StnCode = 'EW29'; 
UPDATE MRT_Station SET Latitude = 1.3331, Longitude = 103.7423 WHERE StnCode = 'EW24'; 
UPDATE MRT_Station SET Latitude = 1.3332, Longitude = 103.7423 WHERE StnCode = 'NS1'; 
UPDATE MRT_Station SET Latitude = 1.3491, Longitude = 103.7496 WHERE StnCode = 'NS2'; 
UPDATE MRT_Station SET Latitude = 1.3851, Longitude = 103.7443 WHERE StnCode = 'BP1'; 
UPDATE MRT_Station SET Latitude = 1.3130, Longitude = 103.8384 WHERE StnCode = 'NS4'; 
UPDATE MRT_Station SET Latitude = 1.3783, Longitude = 103.7625 WHERE StnCode = 'BP6'; 
UPDATE MRT_Station SET Latitude = 1.3783, Longitude = 103.7625 WHERE StnCode = 'DT1'; 
UPDATE MRT_Station SET Latitude = 1.4370, Longitude = 103.7865 WHERE StnCode = 'NS9'; 
UPDATE MRT_Station SET Latitude = 1.4370, Longitude = 103.7865 WHERE StnCode = 'TE2'; 
UPDATE MRT_Station SET Latitude = 1.3263, Longitude = 103.8420 WHERE StnCode = 'NS19'; 
UPDATE MRT_Station SET Latitude = 1.3512, Longitude = 103.8485 WHERE StnCode = 'CC15'; 
UPDATE MRT_Station SET Latitude = 1.3512, Longitude = 103.8485 WHERE StnCode = 'NS17'; 
UPDATE MRT_Station SET Latitude = 1.3687, Longitude = 103.8430 WHERE StnCode = 'NS16'; 
UPDATE MRT_Station SET Latitude = 1.3817, Longitude = 103.8451 WHERE StnCode = 'NS15'; 
UPDATE MRT_Station SET Latitude = 1.4490, Longitude = 103.8199 WHERE StnCode = 'NS11'; 
UPDATE MRT_Station SET Latitude = 1.4295, Longitude = 103.8350 WHERE StnCode = 'NS13'; 
UPDATE MRT_Station SET Latitude = 1.3717, Longitude = 103.8930 WHERE StnCode = 'NE14'; 
UPDATE MRT_Station SET Latitude = 1.4051, Longitude = 103.9024 WHERE StnCode = 'NE17'; 
UPDATE MRT_Station SET Latitude = 1.4051, Longitude = 103.9024 WHERE StnCode = 'PTC'; 
UPDATE MRT_Station SET Latitude = 1.3499, Longitude = 103.8731 WHERE StnCode = 'CC13'; 
UPDATE MRT_Station SET Latitude = 1.3499, Longitude = 103.8731 WHERE StnCode = 'NE12'; 
UPDATE MRT_Station SET Latitude = 1.3915, Longitude = 103.8936 WHERE StnCode = 'NE16'; 
UPDATE MRT_Station SET Latitude = 1.3917, Longitude = 103.8955 WHERE StnCode = 'STC'; 
UPDATE MRT_Station SET Latitude = 1.3533, Longitude = 103.9452 WHERE StnCode = 'DT32'; 
UPDATE MRT_Station SET Latitude = 1.3533, Longitude = 103.9452 WHERE StnCode = 'EW2'; 
UPDATE MRT_Station SET Latitude = 1.3732, Longitude = 103.9493 WHERE StnCode = 'EW1'; 
UPDATE MRT_Station SET Latitude = 1.3197, Longitude = 103.9029 WHERE StnCode = 'EW7'; 
UPDATE MRT_Station SET Latitude = 1.3239, Longitude = 103.9296 WHERE StnCode = 'EW5'; 