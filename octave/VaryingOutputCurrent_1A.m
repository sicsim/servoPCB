%This file is used to plot the results for varying input voltage for the 1 Amp converter
clc;
clear;
InputVoltage = 10;
OutputCurrent = [0.179,0.211,0.249,0.318,0.466,0.610,0.697,0.741,1.068];
InputCurrent = [0.0601,0.0684,0.0801,0.0994,0.137,0.173,0.1955,0.2050,0.278];
OutputVoltage = [4.997,4.992,4.985,4.973,4.952,4.928,4.913,4.884,4.870];
IC_Temperature = [34,37,37,40,42,45,48,51,60];

Efficiency = ((OutputCurrent.*OutputVoltage)./(20*InputCurrent))*100;


title('Ouput Voltage with Varying ouput current');

subplot(2,2,1);
plot(OutputCurrent,OutputVoltage);
xlabel('Output current (A)');
ylabel('Ouput voltage (V)');
%legend({'y = sin(x)','y = cos(x)'},'Location','southwest')
legend({'Ouput Voltage'});
axis([0 1.1 4 6]);

subplot(2,2,2);
plot(OutputCurrent,InputCurrent);
xlabel('Output current (A)');
ylabel('Input Current (A)');
%legend({'y = sin(x)','y = cos(x)'},'Location','southwest')
legend({'Input Current'});
axis([0 1.1 0 0.3]);

subplot(2,2,3);
plot(OutputCurrent,IC_Temperature);
xlabel('Output current (V)');
ylabel('IC Temperature (*C)');
%legend({'y = sin(x)','y = cos(x)'},'Location','southwest')
legend({'IC Temperature'});
axis([0 1.1 20 85]);

subplot(2,2,4);
plot(OutputCurrent,Efficiency);
xlabel('Output current (V)');
ylabel('Efficiency (%)');
%legend({'y = sin(x)','y = cos(x)'},'Location','southwest')
legend({'Efficiency'});
axis([0 1.1 50 120]);
