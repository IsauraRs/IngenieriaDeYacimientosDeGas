Tpr = [1.2:0.05:2.4];
Ppr = [1:1:16];
z = zeros;

for j=1:length(Tpr);
    for i=1:length(Ppr);

        A(j,i) = (1.39*((Tpr(j)-0.92)^0.5))-(0.36*Tpr(j))-0.101;
        E(j,i) = 9*(Tpr(j)-1);
        B(j,i) = ((0.62-(0.23*Tpr(j)))*Ppr(i))+(((0.066)/(Tpr(j)-0.86))-0.037)*Ppr(i)^2+((0.32*(Ppr(i)^6))/(10^E(j,i)));
        C(j,i) = 0.132-0.32*log10(Tpr(j));
        F(j,i) = 0.3106-(0.49*Tpr(j))+(0.1824*(Tpr(j)^2));
        D(j,i) = 10^F(j,i);

        z(j,i) = A(j,i)+((1-A(j,i))/(exp(B(j,i))))+(C(j,i)*(Ppr(i))^D(j,i));
    end
end

plot(Ppr,z)
grid on
xlabel('Ppr')
ylabel('Factor de compresibilidad')
title('Factor de compresibilidad con la ecuación de Begs and Brill')  