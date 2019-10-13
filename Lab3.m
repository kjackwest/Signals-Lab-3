Fs= 100; %sampling frequency
t = 0:1/Fs:10; %time vector incremented by 1/Fs
L=500; %frequency elements
f=((0:L-1)/L)*Fs; %frequency list
w = 2*pi;
N = 7;
xt = 0;
for k = 1:N %for loop appending to xt
    FS = (4/pi)*(1/k)*sin(w*k*t);
    xt = xt+FS;
end
X = fft(xt,L); %fourier transform 
Xf = 2*abs(X)/L; 

subplot(2,1,1);
plot(t,xt);
xlim([0, 2]);
grid on, grid minor;
xlabel('t (sec)');
ylabel('x(t)'); %real sinusoidal sum expression
title('Square wave in time domain');

subplot(2,1,2);
plot(f(1:(L/2)), Xf(1:L/2));
grid on, grid minor;
xlabel('frequency (hz)');
ylabel('Abs(x(w))') %fourier transform 
title('Magnitude Spectrum');








