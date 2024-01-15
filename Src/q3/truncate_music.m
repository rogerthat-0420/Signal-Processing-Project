input = 'music_ceiling-fan.wav';
output = 'truncate_ceiling_fan.wav';


starttime = 30;
duration = 10;   

[audio, sample_rate] = audioread(input);


startindex = round(starttime * sample_rate) + 1; 
endindex = round((starttime + duration) * sample_rate);


truncated = audio(startindex:endIndex, :);

audiowrite(output, truncated, sample_rate);

disp('Audio file truncated and saved successfully.');