% Loading audio file and reference signal
input = audioread('music_pressure-cooker.wav');

output=background_identification(input);

variable={'Pressure Cooker', 'City Traffic', 'Ceiling Fan', 'Water Pump'};

fprintf('The Background Noise is: %s\n', variable{output});