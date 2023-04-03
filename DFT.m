%% 
close all
x=[2 3 -1 4];
N=length(x);
t=0:N-1;
subplot(311)
stem(t,x);
xlabel('Time in Sec');
ylabel('Amplitude');
title('Input Sequence');

subplot(312)
stem(t,abs(fft(x)));
xlabel('Frequency in Hz');
ylabel('Magnitude');
title('Frequency Domain_Magnitude Response');

subplot(313)
stem(t,angle(fft(x)));
xlabel('Frequency in HZ');
ylabel('Phase');
title('Frequency Domain_Phase response');

%% 
