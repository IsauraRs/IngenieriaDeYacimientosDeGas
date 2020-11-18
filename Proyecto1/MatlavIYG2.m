global Tpcs Ppcs Tpc Ppc yi M PM P T
global Ppr Tpr Ppcc Tpcc
%Método de Wichert-Azis corrección de propiedades pc
A = H2S + CO2;
B = H2S;
eps = 120.*((A.^0.9)-A.^1.6)+15.*((B.^0.5)-(B.^4.0));
Tprimpc = Tpcc - eps; %Tpc
Pprimpc = (Ppcc.*Tprimpc)/(Tpc+H2S.*(1-H2S).*eps);%Ppc


Pprw = P./Pprimpc;
Tprw = T./Tprimpc;
%{
Pprw = P./Ppcc
Tprw = T./Tpcc
%}
set(handles.PprwaRes, 'string', Pprw)
set(handles.TprwaRes, 'string', Tprw)


SM = 0;

for j = 1:length(PM)
    M(j,1) = (PM(j,1).*yi(j,1))
    SM = M(j,1) + SM;
end

disp("SM")
disp(SM)

Gammagm = SM./28.96;
disp("Gammagm")
disp(Gammagm)
set(handles.GammagRes, 'string',Gammagm)

GammaHC = (Gammagm-(1.1767.*H2S)-(1.5196.*CO2)-(0.9672.*N2)-(0.622.*H2O))/(1-H2S-CO2-N2-H2O);
set(handles.GammaghcRes, 'string', GammaHC)

%Se prueba el tipo de gas
gasec = 'condensado';
gasen = 'natural';
gasens = 'natural Sutton';
startIndex = regexp(TDG,gasec);
startIndex2 = regexp(TDG,gasen);
startIndex3 = regexp(TDG,gasens);

%Gas condensado
if  startIndex >= 1
    PpcHC = 706 + (51.7.*GammaHC) -(11.1.*((GammaHC).^2));
    TpcHC = 187 + (330.*GammaHC)- ( 71.5*((GammaHC).^2));
        disp(TDG)
    
%Gas natural
elseif startIndex2 >= 1
    PpcHC = 677 + (15.*GammaHC) -(37.5.*((GammaHC).^2));
    TpcHC = 168 + (325.*GammaHC)- ( 12.5*((GammaHC).^2));
    disp(TDG)
    
%Gas natural(Sutton)
elseif startIndex3 >= 1
    PpcHC = 765.8 + (131.0.*GammaHC) -(3.6.*((GammaHC).^2));
    TpcHC = 169.2 + (349.5.*GammaHC)- ( 74.0*((GammaHC).^2));
    disp(TDG)
end

disp("PpcHC, TpcHC")
disp(PpcHC)
disp(TpcHC)
set(handles.PpHCRes, 'string', PpcHC)
set(handles.TpHCRes, 'string', TpcHC)

%Concentraciones
 PpcM = (1-H2S-CO2-N2-H2O).*PpcHC + (1306.*H2S) + (1071.*CO2) + (493.1.*N2) + (3200.1.*H2O);
 TpcM = (1-H2S-CO2-N2-H2O).*TpcHC + (672.35.*H2S) + (547.58.*CO2) + (227.16.*N2) + (1164.9.*H2O);
 
 %Condiciones pseudoreducidas
 Ppsr = P./PpcM
 Tpsr = T./TpcM
 %{
 %Correlación por método de Beggs & Brill para Z
Abb = (1.39.*((TpcM-0.92).^0.5))-(0.36.*TpcM)-0.10
Ebb = 9.*(TpcM-1)
Bbb = ((0.62-(0.23*TpcM))*PpcM)+(((0.066)./(TpcM-0.86))-0.037)*PpcM^2+((0.32.*(PpcM^6))./(10.^Ebb))
Cbb = 0.132-0.32*log10(TpcM)
Fbb = 0.3106-(0.49*TpcM)+(0.1824*(TpcM^2))
Dbb = 10^Fbb;
Z = Abb+((1-Abb)/(exp(Bbb)))+(Cbb*(PpcM).^Dbb)
%}
 
%Método de Wichert-Aziz corrección de propiedades pc
Aw = H2S + CO2;
Bw = H2S;
eps = 120.*((Aw.^0.9)-Aw.^1.6)+15.*((Bw.^0.5)-(Bw.^4.0));
Tprimpc = Tpc - eps;
Pprimpc = (Ppc.*Tprimpc)/(Tpc+H2S.*(1-H2S).*eps);

Pprc  = P./Pprimpc
Tprc = T./Tprimpc

%Correlación por método de Beggs & Brill para Z
Abb = (1.39.*((Tprc-0.92).^0.5))-(0.36.*Tprc)-0.10
Ebb = 9.*(Tprc-1)
Bbb = ((0.62-(0.23*Tprc))*Pprc)+(((0.066)./(Tprc-0.86))-0.037)*Pprc^2+((0.32.*(Pprc^6))./(10.^Ebb))
Cbb = 0.132-0.32*log10(Tprc)
Fbb = 0.3106-(0.49*Tprc)+(0.1824*(Tprc^2))
Dbb = 10^Fbb;
Z = Abb+((1-Abb)/(exp(Bbb)))+(Cbb*(Pprc).^Dbb)


%Cálculo de Bg
Bg = (0.02829.*Z.*T)/(P);

set(handles.BgRes, 'string', Bg);

%Compresibilidad por correlación de Papay
dzdpP = -(3.52./(10.^(0.9813.*Tprw))) + ((0.548.*Pprw)./(10.^(0.8157.*Tprw)));
CgP = (1./Pprw) - ((1./Z).*dzdpP);
set(handles.CgPRes, 'string', CgP)

%Compresibilidad por Beggs&Brill
dzdpB = (-(1-Abb)./(((0.62-0.23.*Tprw)+((0.132./(Tprw-0.86))-0.74).*Pprw + ((1.92.*(Pprw.^5)./(10.^(9.*(Tprw-1)))))).*exp(Bbb)))+(Cbb.*Dbb.*(Pprw.^(Dbb-1)));
CgB = (1./Pprw) - ((1./Z).*dzdpB);
set(handles.CgBRes, 'string', CgB)

%Viscosidad del gas por correlación de Lee
Rom = (1.4935.*(10.^-3)).*((P.*SM)./(Z.*T));
Km = (9.379+(0.01607.*SM).*(T.^1.5))/(209.2+(19.26.*SM)+T);
Xm = 3.448+(986.4/T)+(0.01009.*SM);
Ym = 2.447 - (0.2224.*Xm);
mugg = (1.*(10.^-4)).*Km.*exp(Xm.*(Rom.^Ym));
set(handles.MugRes, 'string', mugg);


set(handles.PpcstuRes, 'string', Ppcs)
set(handles.TpcstuRes, 'string', Tpcs)

set(handles.PprRes, 'string', Ppr)
set(handles.TprRes, 'string', Tpr)

set(handles.ZbbRes, 'string', Z)
%
%
%
%
%Variables para almacenar la suma de V1, V2 y V3
Vs = 0; 
Vs2 = 0;
Vs3 = 0;
for i = 1:length(yi)
    V1(i,1) = (yi(i,1).*(Tc(i,1)./(Pc(i,1))));
    V2(i,1) = (yi(i,1).*((Tc(i,1)./(Pc(i,1))).^(1./2)));
    V3(i,1) = (yi(i,1)).*(Tc(i,1)./(Pc(i,1).^(1./2)));
    Vs = V1(i,1) + Vs;
    Vs2 = V2(i,1) + Vs2;
    Vs3 = V3(i,1) + Vs3;
    M = Pmol(i,1)*yi(i,1); 
end
disp(Vs)
disp(Vs2)
disp(Vs3)
%Método Stewart, Bukhard y Voo
%Se calcula J y K
J = ((1/3).*Vs) + (2/3).*((Vs2).^2)
K = Vs3

%Se calculan presión y temperatura pseudocrítica
global Tpc Ppc 
global Tpcs Ppcs Pc 

Tpc = K.^2./J
Ppc = Tpc./J
set(handles.PpcRes, 'string', Ppc)
set(handles.TpcRes, 'string', Tpc)

%
global Tpcc Ppcc
%Correlación de Sutton
FJ = (1./3).*((C7p+C8p+C9p).*((Tc(14,1))./(Pc(14,1)))) + (2./3).*((C7p+C8p+C9p).*((Tc(14,1)./Pc(14,1)).^(1./2))).^2
epsj = (0.6081.*FJ) + (1.1325.*(FJ.^2)) - (14.004.*FJ.*(C7p+C8p+C9p)) + (664.434.*FJ.*(C7p+C8p+C9p).^2)
epsk = (Tc(14,1)./(Pc(14,1).^(1./2))).*((0.3129.*(C7p+C8p+C9p)) - (4.8156.*((C7p+C8p+C9p).^2))+(27.3751.*((C7p+C8p+C9p).^3)))
Jp = J - epsj
Kp = K- epsk
Tpcc = (Kp.^2)/Jp
Ppcc = Tpcc/Jp

%Carr-Kobayashi-Burrows
Tppc = Tpc - (80.*yi(2,1)) + (130.*yi(3,1)) - (250.*(yi(4,1)));
Pppc = Ppc + (440.*yi(2,1)) + (600.*yi(3,1)) - (170.*yi(4,1));

global Ppr Tpr
Ppr = P./Pppc
Tpr = T./Tppc

%Correlación por método de Beggs & Brill para Z
Ab = (1.39.* ((Tpr-0.92).^0.5)) - (0.36.*Tpr) - 0.101
%Ab = 1.39*((Tpr-0.92)^0.5)-(0.36.*Tpr)-0.10
Eb = 9.*(Tpr-1)
Bb = ((0.62-(0.23.*Tpr))*Ppr)+((((0.066)./(Tpr-0.86))-0.037)*(Ppr.^2))+((0.32.*(Ppr.^6))/(10.^Eb))
Cb = 0.132-0.32.*log10(Tpr)
Fb = 0.3106-(0.49.*Tpr)+(0.1824*(Tpr.^2))
Db = 10.^Fb;
Zb = Ab+((1-Ab)./(exp(Bb)))+(Cb.*(Ppr).^Db)
set(handles.ZCKBRes, 'string', Zb)

%{
SM = 0;

for j = 1:length(PM)
    M(j,1) = (PM(j,1).*yi(j,1))
    SM = M(j,1) + SM;
end

disp("SM")
disp(SM)

Gammagm = SM./28.96;
disp("Gammagm")
disp(Gammagm)
set(handles.GammagRes, 'string',Gammagm)

GammaHC = (Gammagm-(1.1767.*H2S)-(1.5196.*CO2)-(0.9672.*N2)-(0.622.*H2O))/(1-H2S-CO2-N2-H2O);
set(handles.GammaghcRes, 'string', GammaHC)

%Se prueba el tipo de gas
gasec = 'condensado';
gasen = 'natural';
gasens = 'natural Sutton';
startIndex = regexp(TDG,gasec);
startIndex2 = regexp(TDG,gasen);
startIndex3 = regexp(TDG,gasens);

%Gas condensado
if  startIndex >= 1
    PpcHC = 706 + (51.7.*GammaHC) -(11.1.*((GammaHC).^2));
    TpcHC = 187 + (330.*GammaHC)- ( 71.5*((GammaHC).^2));
        disp(TDG)
    
%Gas natural
elseif startIndex2 >= 1
    PpcHC = 677 + (15.*GammaHC) -(37.5.*((GammaHC).^2));
    TpcHC = 168 + (325.*GammaHC)- ( 12.5*((GammaHC).^2));
    disp(TDG)
    
%Gas natural(Sutton)
elseif startIndex3 >= 1
    PpcHC = 765.8 + (131.0.*GammaHC) -(3.6.*((GammaHC).^2));
    TpcHC = 169.2 + (349.5.*GammaHC)- ( 74.0*((GammaHC).^2));
    disp(TDG)
end

disp("PpcHC, TpcHC")
disp(PpcHC)
disp(TpcHC)
set(handles.PpHCRes, 'string', PpcHC)
set(handles.TpHCRes, 'string', TpcHC)

%Concentraciones
 PpcM = (1-H2S-CO2-N2-H2O).*PpcHC + (1306.*H2S) + (1071.*CO2) + (493.1.*N2) + (3200.1.*H2O);
 TpcM = (1-H2S-CO2-N2-H2O).*TpcHC + (672.35.*H2S) + (547.58.*CO2) + (227.16.*N2) + (1164.9.*H2O);
 
%Método de Wichert-Azis corrección de propiedades pc
A = H2S + CO2;
B = H2S;
eps = 120.*((A.^0.9)-A.^1.6)+15.*((B.^0.5)-(B.^4.0));
Tprimpc = Tpc - eps;
Pprimpc = (Ppc.*Tprimpc)/(Tpc+H2S.*(1-H2S).*eps);

%Correlación por método de Beggs & Brill para Z
global Z

A = (1.39*((Tpr-0.92)^0.5))-(0.36*Tpr)-0.101
E = 9*(Tpr-1)
B = ((0.62-(0.23*Tpr))*Ppr)+(((0.066)/(Tpr-0.86))-0.037)*Ppr^2+((0.32*(Ppr^6))/(10^E))
C = 0.132-0.32*log10(Tpr)
F = 0.3106-(0.49*Tpr)+(0.1824*(Tpr^2))
D = 10^F;
Z = A+((1-A)/(exp(B)))+(C*(Ppr).^D)



%Cálculo de Bg
Bg = (0.02829.*Z.*T)/(P);

set(handles.BgRes, 'string', Bg);

%Compresibilidad por correlación de Papay
dzdpP = -(3.52./(10.^(0.9813.*Tpr))) + ((0.548.*Ppr)./(10.^(0.8157.*Tpr)));
CgP = (1./Ppr) - ((1./Z).*dzdpP);
set(handles.CgPRes, 'string', CgP)

%Compresibilidad por Beggs&Brill
dzdpB = (-(1-A)./(((0.62-0.23.*Tpr)+((0.132/(Tpr-0.86))-0.74).*Ppr + ((1.92.*(Ppr.^5)/(10.^(9.*(Tpr-1)))))).*exp(B)))+(C.*D.*(Ppr.^(D-1)));
CgB = (1./Ppr) - ((1./Z).*dzdpB);
set(handles.CgBRes, 'string', CgB)

%Viscosidad del gas por correlación de Lee
Rom = (1.4935.*(10.^-3)).*((P.*SM)./(Z.*T));
Km = (9.379+(0.01607.*SM).*(T.^1.5))/(209.2+(19.26.*SM)+T);
Xm = 3.448+(986.4/T)+(0.01009.*SM);
Ym = 2.447 - (0.2224.*Xm);
mugg = (1.*(10.^-4)).*Km.*exp(Xm.*(Rom.^Ym));
set(handles.MugRes, 'string', mugg);
%} 

