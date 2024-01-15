function echo = echo_generation(input,sample_rate)

    % Impulse response parameters
    delay = 0.8;                       
    decay_factor = 0.6;                                                  
    
    % Create an impulse response for the echo
    impulse_train = [1,zeros(1,round(sample_rate*delay)-1),decay_factor];
    
    impulse_train = impulse_train(:);
    input = input(:);
    
    echo = conv(input, impulse_train);
    % echo = echo/ max(abs(echo));
    
end