[audioData, sampleRate] = audioread('q2_easy.wav');

figure;
spectrogram(audioData,hann(256), 128, 1024, sampleRate, 'yaxis');
title('Spectrogram of the Audio File');
xlabel('Time (s)');
ylabel('Frequency (Hz)');
colorbar;
 
colormap('jet');

