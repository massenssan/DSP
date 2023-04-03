Fs=100;% sampling frequency
Fsig=10;
t=0:1/Fs:1;
N=length(t);
x=10*sin(2*pi*Fsig*t+pi/2); %in db it is 20 dB


subplot(311);
stem(t,x);
xlabel('Time in s');
ylabel('Frequency');
title('Time Domain');

subplot(312);
stem(0:N-1, abs(fft(x)/N));
xlabel('Frequency');
ylabel('Magnitude');
title('Frequency Domain-Magnitude response');

subplot(313);
stem(0:N-1, angle(fft(x)));
xlabel('Frequency');
ylabel('Phase');
title('Frequency Domain-Phase response');


