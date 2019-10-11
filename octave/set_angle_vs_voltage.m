%This file is used to plot the results for varying input voltage for the 1 Amp converter

samples = [1:19];
set_angle = [0:10:180];
Voltage = [0.330,0.518,0.620,0.716,0.809,0.901,0.992,1.083,1.169,1.259,1.347,1.433,1.522,1.607,1.690,1.776,1.861,1.945,2.2026];
measured_angle = [0,20,31,42,51,61,70,80,90,99,108,118,127,136,145,154,163,172,178];



plot(set_angle,Voltage,'*-');
%hold on;
%plot(samples,measured_angle);

title('Servo motor angles vs Voltage');
xlabel('Set angle (degrees)');
ylabel('Voltage (V)');
%legend({'y = sin(x)','y = cos(x)'},'Location','southwest')
legend({'Voltage'});
axis([0 190 0 2.4]);
grid;
hold off;
