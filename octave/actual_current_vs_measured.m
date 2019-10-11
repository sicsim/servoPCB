%This file is used to plot the results for varying input voltage for the 1 Amp converter

samples = [1:8];
actual_current = [0,1,2,3,4,5,6,7,7.48];
measured_current = [0,1.02,2.12,3.24,4.38,5.50,6.72,7.88,8.46];



plot(actual_current,measured_current,'*-');
%hold on;
%plot(samples,measured_angle);

title('Sensor measurement vs True current');
xlabel('True current (Amperes)');
ylabel('Sensor measurement (Amperes)');
legend({'Current'});
axis([0 9 0 9]);
grid;
hold off;
