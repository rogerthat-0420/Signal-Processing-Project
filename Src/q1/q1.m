% Load an audio file
[input, sample_rate] = audioread('hindi_2s.wav');

input_audio=audioplayer(input,sample_rate);

output=echo_generation(input,sample_rate);
output_audio=audioplayer(output,sample_rate);

name='output_q1_hindi_2s.wav';
audiowrite(name, output, sample_rate);

disp('Echo Generation is done');


