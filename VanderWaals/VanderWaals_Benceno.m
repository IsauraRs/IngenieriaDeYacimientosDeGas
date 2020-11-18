a = 18.78;
b = 0.1208;
R = 0.08121;
subplot(1,2,1)
T = [373:100:673];
V  = [2:100];
fac1 = R./(V-b);
fac2 = a./V.^2;
P = zeros(4,length(V));
P(1,:) = T(1)*fac1 - fac2;
P(2,:) = T(2)*fac1 - fac2;
P(3,:) = T(3)*fac1 - fac2;
P(4,:) = T(4)*fac1 - fac2;
disp(P)
plot(V,P(1,:),'-',V,P(2,:),'-',V,P(3,:),':',V,P(4,:),'-.')
title('Ecuación de Van der Waals: Isotermas')
xlabel('Volumen, L')
ylabel('Presión, atm')
axis([0,50,0,15])
legend('T = 100°C','T = 200°C', 'T = 300°C', 'T = 400°C')
subplot(1,2,2)
P = [25:10:55];
V = [2:100];
fac1 = (V-b)/R;
fac2 = a./V.^2;
T = zeros(4,length(V));
T(1,:) = ((P(1)+fac2).*fac1)-273.15;
T(2,:) = ((P(2)+fac2).*fac1)-273.15;
T(3,:) = ((P(3)+fac2).*fac1)-273.15;
T(4,:) = ((P(4)+fac2).*fac1)-273.15;
plot(V,T(1,:),'-',V,T(2,:),'-',V,T(3,:),':',V,T(4,:),'-.')
title('Ecuación de Van der Waals: Isobaras')
xlabel('Volumen, L')
ylabel('Temperatura, °C')
legend('P = 25 [atm]','P = 35 [atm]','P = 45 [atm]','P = 55 atm')