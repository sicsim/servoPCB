%This file is used to plot the results for varying input voltage for the 1 Amp converter

samples = [1:9];
measured_temp = [30:5:70];
actual_temp = [28,32,37,42,46,50,55,59,65];



plot(actual_temp,measured_temp,'*-');
%hold on;
%plot(samples,measured_angle);

title('Sensor measurement vs True temperature');
xlabel('True temperature (degrees Celsius)');
ylabel('Sensor measurement (degrees Celsius)');
legend({'Temperature'});
axis([28 70 25 75]);
grid;
hold off;
