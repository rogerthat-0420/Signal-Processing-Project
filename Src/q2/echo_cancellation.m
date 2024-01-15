function output=echo_cancellation(desired,reference)

    desired=desired(:);
    reference=reference(:);

    % Finding the maximum length of the two signals
    max_length = max(length(desired), length(reference));

    % Zero-padding the shorter signal to the maximum length
    desired = [desired; zeros(max_length - length(desired), 1)];
    reference = [reference; zeros(max_length - length(reference), 1)];

    L=7;
    for i=1:10
        nlms = dsp.LMSFilter(L,'Method','Normalized LMS');
        [~,mumaxmsenlms] = maxstep(nlms,reference);
        nlms.StepSize = mumaxmsenlms/60;
        [ynlms] = nlms(desired,reference);
    
        reference=ynlms;
    end

    output=ynlms;
    disp("Echo Cancellation Done");
end
