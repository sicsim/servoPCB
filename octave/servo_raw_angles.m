%This file is used to plot the results for varying input voltage for the 1 Amp converter

samples = [1:17];
set_angle = [0:10:160];
measured_angle = [0,10,22,32,43,53,63,73,83,93,102,112,122,132,141,150,160];



plot(samples,set_angle);
hold on;
plot(samples,measured_angle);

title('Servo motor angles');
xlabel('Samples (n)');
ylabel('Set and Measured angles (degrees)');
%legend({'y = sin(x)','y = cos(x)'},'Location','southwest')
legend({'Set angle','Measured angle'});
axis([1 17 0 180]);
grid;
hold off;
