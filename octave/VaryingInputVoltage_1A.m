%This file is used to plot the results for varying input voltage for the 1 Amp converter

InputV = [6:24];
OutputV = [4.165,4.998,4.997,4.998,4.998,4.998,4.998,4.998,4.998,4.998,4.998,4.998,4.997,4.997,4.997,4.997,4.997,4.996,4.996];



plot(InputV,OutputV);
title('Ouput Voltage with Varying input voltage');
xlabel('Input voltage (V)');
ylabel('Ouput voltage (V)');
%legend({'y = sin(x)','y = cos(x)'},'Location','southwest')
legend({'Ouput Voltage'})
axis([5 25 4 6])
