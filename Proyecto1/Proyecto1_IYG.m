function varargout = Proyecto1_IYG(varargin)
% PROYECTO1_IYG MATLAB code for Proyecto1_IYG.fig
%      PROYECTO1_IYG, by itself, creates a new PROYECTO1_IYG or raises the existing
%      singleton*.
%
%      H = PROYECTO1_IYG returns the handle to a new PROYECTO1_IYG or the handle to
%      the existing singleton*.
%
%      PROYECTO1_IYG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROYECTO1_IYG.M with the given input arguments.
%
%      PROYECTO1_IYG('Property','Value',...) creates a new PROYECTO1_IYG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Proyecto1_IYG_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Proyecto1_IYG_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Proyecto1_IYG

% Last Modified by GUIDE v2.5 16-Nov-2020 21:38:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Proyecto1_IYG_OpeningFcn, ...
                   'gui_OutputFcn',  @Proyecto1_IYG_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Proyecto1_IYG is made visible.
function Proyecto1_IYG_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Proyecto1_IYG (see VARARGIN)

% Choose default command line output for Proyecto1_IYG
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Proyecto1_IYG wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Proyecto1_IYG_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function H2e_Callback(hObject, eventdata, handles)
% hObject    handle to H2e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of H2e as text
%        str2double(get(hObject,'String')) returns contents of H2e as a double


% --- Executes during object creation, after setting all properties.
function H2e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to H2e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CO2e_Callback(hObject, eventdata, handles)
% hObject    handle to CO2e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CO2e as text
%        str2double(get(hObject,'String')) returns contents of CO2e as a double


% --- Executes during object creation, after setting all properties.
function CO2e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CO2e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function N2e_Callback(hObject, eventdata, handles)
% hObject    handle to N2e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of N2e as text
%        str2double(get(hObject,'String')) returns contents of N2e as a double


% --- Executes during object creation, after setting all properties.
function N2e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to N2e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C1e_Callback(hObject, eventdata, handles)
% hObject    handle to C1e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C1e as text
%        str2double(get(hObject,'String')) returns contents of C1e as a double


% --- Executes during object creation, after setting all properties.
function C1e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C1e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C2e_Callback(hObject, eventdata, handles)
% hObject    handle to C2e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C2e as text
%        str2double(get(hObject,'String')) returns contents of C2e as a double


% --- Executes during object creation, after setting all properties.
function C2e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C2e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C3e_Callback(hObject, eventdata, handles)
% hObject    handle to C3e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C3e as text
%        str2double(get(hObject,'String')) returns contents of C3e as a double


% --- Executes during object creation, after setting all properties.
function C3e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C3e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iC4e_Callback(hObject, eventdata, handles)
% hObject    handle to iC4e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iC4e as text
%        str2double(get(hObject,'String')) returns contents of iC4e as a double


% --- Executes during object creation, after setting all properties.
function iC4e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iC4e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nC4e_Callback(hObject, eventdata, handles)
% hObject    handle to nC4e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nC4e as text
%        str2double(get(hObject,'String')) returns contents of nC4e as a double


% --- Executes during object creation, after setting all properties.
function nC4e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nC4e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C5e_Callback(hObject, eventdata, handles)
% hObject    handle to C5e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C5e as text
%        str2double(get(hObject,'String')) returns contents of C5e as a double


% --- Executes during object creation, after setting all properties.
function C5e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C5e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iC5e_Callback(hObject, eventdata, handles)
% hObject    handle to iC5e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iC5e as text
%        str2double(get(hObject,'String')) returns contents of iC5e as a double


% --- Executes during object creation, after setting all properties.
function iC5e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iC5e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nC5e_Callback(hObject, eventdata, handles)
% hObject    handle to nC5e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nC5e as text
%        str2double(get(hObject,'String')) returns contents of nC5e as a double


% --- Executes during object creation, after setting all properties.
function nC5e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nC5e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C6e_Callback(hObject, eventdata, handles)
% hObject    handle to C6e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C6e as text
%        str2double(get(hObject,'String')) returns contents of C6e as a double


% --- Executes during object creation, after setting all properties.
function C6e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C6e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C7e_Callback(hObject, eventdata, handles)
% hObject    handle to C7e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C7e as text
%        str2double(get(hObject,'String')) returns contents of C7e as a double


% --- Executes during object creation, after setting all properties.
function C7e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C7e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C8e_Callback(hObject, eventdata, handles)
% hObject    handle to C8e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C8e as text
%        str2double(get(hObject,'String')) returns contents of C8e as a double


% --- Executes during object creation, after setting all properties.
function C8e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C8e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C9e_Callback(hObject, eventdata, handles)
% hObject    handle to C9e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C9e as text
%        str2double(get(hObject,'String')) returns contents of C9e as a double


% --- Executes during object creation, after setting all properties.
function C9e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C9e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C10e_Callback(hObject, eventdata, handles)
% hObject    handle to C10e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C10e as text
%        str2double(get(hObject,'String')) returns contents of C10e as a double


% --- Executes during object creation, after setting all properties.
function C10e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C10e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in SuttonButton.
function SuttonButton_Callback(hObject, eventdata, handles)
% hObject    handle to SuttonButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

H2 = str2double(get(handles.H2e, 'string')); %
CO2 = str2double(get(handles.CO2e, 'string'));
N2 = str2double(get(handles.N2e, 'string'));
C1 = str2double(get(handles.C1e, 'string'));
C2 = str2double(get(handles.C2e, 'string'));
C3 = str2double(get(handles.C3e, 'string'));
iC4 = str2double(get(handles.iC4e, 'string'));
nC4 = str2double(get(handles.nC4e, 'string'));
C5 = str2double(get(handles.C5e, 'string'));
iC5 = str2double(get(handles.iC5e, 'string'));
nC5 = str2double(get(handles.nC5e, 'string'));
C6 = str2double(get(handles.C6e, 'string'));
C7 = str2double(get(handles.C7e, 'string'));
MC5 = str2double(get(handles.MC5e, 'string'));
Benceno = str2double(get(handles.Bencenoe, 'string'));
Ciclohexano = str2double(get(handles.Ciclohexanoe, 'string'));
C8 = str2double(get(handles.C8e, 'string'));
MC6  = str2double(get(handles.MC6e, 'string'));
Tolueno = str2double(get(handles.Toluenoe, 'string'));
C9 = str2double(get(handles.C9e, 'string'));
EBenceno = str2double(get(handles.EBencenoe, 'string'));
MPX = str2double(get(handles.MPXe, 'string'));
OX = str2double(get(handles.OXe, 'string'));
C10 = str2double(get(handles.C10e, 'string'));
H2S = str2double(get(handles.H2Se , 'string'));
P = str2double(get(handles.Psme , 'string'));
T = str2double(get(handles.Tsme , 'string'));
H2O = str2double(get(handles.H2Oe , 'string'));
TDG = get(handles.TDGe, 'string');


global Tpcs Ppcs Tpc Ppc yi M PM P T Zb Ab Bb Cb Db Eb Fb
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
 
%Método de Wichert-Azis corrección de propiedades pc
Aw = H2S + CO2;
Bw = H2S;
eps = 120.*((Aw.^0.9)-Aw.^1.6)+15.*((Bw.^0.5)-(Bw.^4.0));
Tprimpc = Tpc - eps;
Pprimpc = (Ppc.*Tprimpc)/(Tpc+H2S.*(1-H2S).*eps);

%Cálculo de Bg
Bg = (0.02829.*Zb.*T)/(P)

set(handles.BgRes, 'string', Bg);

%Compresibilidad por correlación de Papay
dzdpP = -(3.52./(10.^(0.9813.*Tprw))) + ((0.548.*Pprw)./(10.^(0.8157.*Tprw)));
CgP = (1./Pprw) - ((1./Zb).*dzdpP);
set(handles.CgPRes, 'string', CgP)

%Compresibilidad por Beggs&Brill
dzdpB = (-(1-Ab)./(((0.62-0.23.*Tprw)+((0.132./(Tprw-0.86))-0.74).*Pprw + ((1.92.*(Pprw.^5)./(10.^(9.*(Tprw-1)))))).*exp(Bb)))+(Cb.*Db.*(Pprw.^(Db-1)));
CgB = (1./Pprw) - ((1./Zb).*dzdpB);
set(handles.CgBRes, 'string', CgB)

%Viscosidad del gas por correlación de Lee
Rom = (1.4935.*(10.^-3)).*((P.*SM)./(Zb.*T));
Km = (9.379+(0.01607.*SM).*(T.^1.5))/(209.2+(19.26.*SM)+T);
Xm = 3.448+(986.4/T)+(0.01009.*SM);
Ym = 2.447 - (0.2224.*Xm);
mugg = (1.*(10.^-4)).*Km.*exp(Xm.*(Rom.^Ym))
set(handles.MugRes, 'string', mugg);


set(handles.PpcstuRes, 'string', Ppcs)
set(handles.TpcstuRes, 'string', Tpcs)

set(handles.PprRes, 'string', Ppr)
set(handles.TprRes, 'string', Tpr)

% --- Executes on button press in SuttonButton.
function StewartButton_Callback(hObject, eventdata, handles)
% hObject    handle to SuttonButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

H2 = str2double(get(handles.H2e, 'string')); %
CO2 = str2double(get(handles.CO2e, 'string'));
N2 = str2double(get(handles.N2e, 'string'));
C1 = str2double(get(handles.C1e, 'string'));
C2 = str2double(get(handles.C2e, 'string'));
C3 = str2double(get(handles.C3e, 'string'));
iC4 = str2double(get(handles.iC4e, 'string'));
nC4 = str2double(get(handles.nC4e, 'string'));
C5 = str2double(get(handles.C5e, 'string'));
iC5 = str2double(get(handles.iC5e, 'string'));
nC5 = str2double(get(handles.nC5e, 'string'));
C6 = str2double(get(handles.C6e, 'string'));
C7 = str2double(get(handles.C7e, 'string'));
MC5 = str2double(get(handles.MC5e, 'string'));
Benceno = str2double(get(handles.Bencenoe, 'string'));
Ciclohexano = str2double(get(handles.Ciclohexanoe, 'string'));
C8 = str2double(get(handles.C8e, 'string'));
MC6  = str2double(get(handles.MC6e, 'string'));
Tolueno = str2double(get(handles.Toluenoe, 'string'));
C9 = str2double(get(handles.C9e, 'string'));
EBenceno = str2double(get(handles.EBencenoe, 'string'));
MPX = str2double(get(handles.MPXe, 'string'));
OX = str2double(get(handles.OXe, 'string'));
C10 = str2double(get(handles.C10e, 'string'));
H2S = str2double(get(handles.H2Se , 'string'));
P = str2double(get(handles.Psme , 'string'));
T = str2double(get(handles.Tsme , 'string'));
H2O = str2double(get(handles.H2Oe , 'string'));
TDG = get(handles.TDGe, 'string');

if H2 >= 1.0
    H2 = H2/100;
elseif CO2 >= 1.0
    CO2 = CO2/100;
elseif N2 >= 1.0 
    N2 = N2/100;
elseif C1 >= 1.0
    C1 = C1/100;
elseif C2 >= 1.0
    C2 = C2/100;
elseif C3 >= 1.0
    C3 = C3/100;
elseif iC4 >= 1.0
    iC4 = iC4/100;
elseif nC4 >= 1.0
    nC4 = nC4/100;
elseif C5 >= 1.0
    C5 = C5/100;
elseif iC5 >= 1.0
    iC5  =iC5/100;
elseif nC5 >= 1.0
    nC5 = nC5/100;
elseif C6 >= 1.0
    C6 = C6/100;
elseif C7 >= 1.0
    C7 = C7/100;
elseif MC5 >= 1.0
    MC5 = MC5/100;
elseif Benceno >= 1.0
    Benceno = Benceno/100;
elseif Ciclohexano >= 1.0
    Ciclohexano = Ciclohexano/100;
elseif C8 >= 1.0
    C8 = C8/100;
elseif MC6 >= 1.0
    MC6 = MC6/100;
elseif Tolueno >= 1.0
    Tolueno = Tolueno/100;
elseif C9 >= 1.0
    C9 = C9/100;
elseif EBenceno >= 1.0
    EBenceno = EBenceno/100;
elseif MPX >= 1.0
    MPX = MPX/100;
elseif OX >= 1.0
    OX = OX/100;
elseif C10 >= 1.0
    C10 = C10/100;
elseif H2S >= 1.0
    H2S = H2S/100; 
end

global C7p C8p C9p yi Tc
C7p = MC5 + Benceno + Ciclohexano + C7;
C8p = MC6 + Tolueno + C8;
C9p = EBenceno + MPX + OX + C9;

yi(:,1) = [H2,CO2,H2S,N2,C1,C2,C3,iC4,nC4,C5,iC5,nC5,C6,C7p,C8p,C9p,C10];
%Se añaden txt's con Tc,Pc y Peso molecular
TyP = load('TyPcríticas.txt');
Tc = TyP(:,1);
Pc = TyP(:,2);
save('TyPcríticas','Tc','Pc');
load('TyPcríticas','Tc','Pc');

global PM

Pmol = load('PesoMol.txt');
PM = Pmol(:,1);
save('PesoMol','PM');
load('PesoMol','PM');

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
set(handles.PpcstuRes, 'string' ,Ppcc)
set(handles.TpcstuRes, 'string', Tpcc)

%Carr-Kobayashi-Burrows
Tppc = Tpc - (80.*yi(2,1)) + (130.*yi(3,1)) - (250.*(yi(4,1)));
Pppc = Ppc + (440.*yi(2,1)) + (600.*yi(3,1)) - (170.*yi(4,1));

global Ppr Tpr Zb Ab Cb Eb Db Fb Bb
Ppr = P./Pppc
Tpr = T./Tppc

%Correlación por método de Beggs & Brill para Z
Ab = (1.39.* ((Tpr-0.92).^0.5)) - (0.36.*Tpr) - 0.101
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

function MC5e_Callback(hObject, eventdata, handles)
% hObject    handle to MC5e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MC5e as text
%        str2double(get(hObject,'String')) returns contents of MC5e as a double


% --- Executes during object creation, after setting all properties.
function MC5e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MC5e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Bencenoe_Callback(hObject, eventdata, handles)
% hObject    handle to Bencenoe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Bencenoe as text
%        str2double(get(hObject,'String')) returns contents of Bencenoe as a double


% --- Executes during object creation, after setting all properties.
function Bencenoe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Bencenoe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ciclohexanoe_Callback(hObject, eventdata, handles)
% hObject    handle to Ciclohexanoe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ciclohexanoe as text
%        str2double(get(hObject,'String')) returns contents of Ciclohexanoe as a double


% --- Executes during object creation, after setting all properties.
function Ciclohexanoe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ciclohexanoe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MC6e_Callback(hObject, eventdata, handles)
% hObject    handle to MC6e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MC6e as text
%        str2double(get(hObject,'String')) returns contents of MC6e as a double


% --- Executes during object creation, after setting all properties.
function MC6e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MC6e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Toluenoe_Callback(hObject, eventdata, handles)
% hObject    handle to Toluenoe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Toluenoe as text
%        str2double(get(hObject,'String')) returns contents of Toluenoe as a double


% --- Executes during object creation, after setting all properties.
function Toluenoe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Toluenoe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EBencenoe_Callback(hObject, eventdata, handles)
% hObject    handle to EBencenoe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EBencenoe as text
%        str2double(get(hObject,'String')) returns contents of EBencenoe as a double


% --- Executes during object creation, after setting all properties.
function EBencenoe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EBencenoe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MPXe_Callback(hObject, eventdata, handles)
% hObject    handle to MPXe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MPXe as text
%        str2double(get(hObject,'String')) returns contents of MPXe as a double


% --- Executes during object creation, after setting all properties.
function MPXe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MPXe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function OXe_Callback(hObject, eventdata, handles)
% hObject    handle to OXe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of OXe as text
%        str2double(get(hObject,'String')) returns contents of OXe as a double


% --- Executes during object creation, after setting all properties.
function OXe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OXe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function H2Se_Callback(hObject, eventdata, handles)
% hObject    handle to H2Se (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of H2Se as text
%        str2double(get(hObject,'String')) returns contents of H2Se as a double


% --- Executes during object creation, after setting all properties.
function H2Se_CreateFcn(hObject, eventdata, handles)
% hObject    handle to H2Se (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Psme_Callback(hObject, eventdata, handles)
% hObject    handle to Psme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Psme as text
%        str2double(get(hObject,'String')) returns contents of Psme as a double


% --- Executes during object creation, after setting all properties.
function Psme_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Psme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tsme_Callback(hObject, eventdata, handles)
% hObject    handle to Tsme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tsme as text
%        str2double(get(hObject,'String')) returns contents of Tsme as a double


% --- Executes during object creation, after setting all properties.
function Tsme_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tsme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function H2Oe_Callback(hObject, eventdata, handles)
% hObject    handle to H2Oe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of H2Oe as text
%        str2double(get(hObject,'String')) returns contents of H2Oe as a double


% --- Executes during object creation, after setting all properties.
function H2Oe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to H2Oe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TDGe_Callback(hObject, eventdata, handles)
% hObject    handle to TDGe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TDGe as text
%        str2double(get(hObject,'String')) returns contents of TDGe as a double


% --- Executes during object creation, after setting all properties.
function TDGe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TDGe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
