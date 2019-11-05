% Select Doppler Profile Resolution
   highres = 0;
   if highres % Longer time to process, but more accurate
       win_adv = 5e-3;%5e-3; % s, sliding window advancement duration
       win_duration = 1;% seconds, fft window duration
   else % shorter time to process, but slightly less accurate
       win_adv = 5e-2;%5e-3; % seconds, sliding window advancement duration
       win_duration = .1;% seconds, fft window duration
   end
   display_option_1 = 0; % Display the Aligned Doppler Spectrum for all processed windows in real-time
   display_option_2 = 0; % Display the aligned Doppler Spectra (different from Doppler Profile) in real-time.
   display_option_3 = 0; % Compute and display the Unaligned Doppler Profile
   dirpath = 'test_raw_data/';
   thefilename = 'rfc_coll_01';
   % Get the Doppler Profile from complex-baseband binary file.
   % Returns:
%    t_DP = time-axis
%    f_DP = frequency-axis
%    a_DP = aligned Doppler Profile
%    ua_DP = unaligned Doppler Profile
   [t_DP, f_DP , cfo_DP, a_DP, ua_DP] = ProcessRawDataToAlignedDopplerProfile(fc,fs,fsc,doppler_window_size,win_adv,win_duration,display_option_1,display_option_2, display_option_3, dirpath, thefilename);
   display('Aligned Doppler Profile Created.')