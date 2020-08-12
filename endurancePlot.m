function endurancePlot(CfRange,TE,EG,P)
% parameters for fuel capacity (Cf) in liters
Cf = CfRange(1):0.1:CfRange(2);

% equation for fuel flow  and endurance
Rf = P / (EG * TE);
X = Cf ./ Rf;

plot(Cf,X);
% set x and y limits, title, x & y labels
xlim ([25  125]);
ylim ([0 1]);
title('Gasoline Engine Range');
xlabel('Fuel Capacity(l)');
ylabel('Endurance');
end