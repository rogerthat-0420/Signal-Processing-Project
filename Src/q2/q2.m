[desired, fs] = audioread("q2_input_des.wav");
[reference, fs1] = audioread("q2_input_ref.wav");

output=echo_cancellation(desired,reference);
output_audio=audioplayer(output,fs);

name='output_q2.wav';
audiowrite(name, output, fs);