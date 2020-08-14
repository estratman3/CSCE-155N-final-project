function efficiencyPlot(PinRange,C,C1,C2)
% parameters for power in (Pin)
Pin = PinRange(1):0.1:PinRange(2);

% equations for power loss (Ploss), power out(Pout), and efficiency(Y)
Ploss = C + C1 * Pin + C2 * Pin.^2;
Pout = Pin - Ploss;
Y = Pout ./ Pin;


plot(Pin,Y);

% set x and y limits
xlim ([0 125]);
ylim ([0 1]);

% axis labels
title('Powertrain Propulsion Efficiency');
xlabel('Power (kW)');
ylabel('Efficiency)');
end