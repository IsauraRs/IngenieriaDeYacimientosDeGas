function varargout = EBM(varargin)
% EBM MATLAB code for EBM.fig
%      EBM, by itself, creates a new EBM or raises the existing
%      singleton*.
%
%      H = EBM returns the handle to a new EBM or the handle to
%      the existing singleton*.
%
%      EBM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EBM.M with the given input arguments.
%
%      EBM('Property','Value',...) creates a new EBM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EBM_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EBM_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EBM

% Last Modified by GUIDE v2.5 06-Dec-2020 06:22:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EBM_OpeningFcn, ...
                   'gui_OutputFcn',  @EBM_OutputFcn, ...
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


% --- Executes just before EBM is made visible.
function EBM_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EBM (see VARARGIN)

% Choose default command line output for EBM
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes EBM wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = EBM_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function renglonesE_Callback(hObject, eventdata, handles)
% hObject    handle to renglonesE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of renglonesE as text
%        str2double(get(hObject,'String')) returns contents of renglonesE as a double


% --- Executes during object creation, after setting all properties.
function renglonesE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to renglonesE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in createE.
function createE_Callback(hObject, eventdata, handles)
% hObject    handle to createE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rows = str2double(get(handles.renglonesE, 'string'));
set(handles.uitable1,'Data',cell(rows,2),'ColumnEditable',true),

% --- Executes on button press in graphButton.
function graphButton_Callback(hObject, eventdata, handles)
% hObject    handle to graphButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Matrix = str2double(get(handles.uitable1, 'Data'));
x = Matrix(:,1);
y = Matrix(:,2);
%plot(x,y,'g-');
xlabel('Gp')
ylabel('P/z')

%syms agrega la variable a la ecuación
syms t

%polyfit devuelve los coeficientes para un polinomio (ajusta a mínimos
%cuadrados)
ec = polyfit(x,y,1)

%Se divide entre 1*10^3 para deshacer la factorización que realiza MATLAB
%por default
lEc = (ec./(1.0.*10^(3)))

%Se crea una expresión polinomial para un vector simbólico de coeficientes
%A partir del polinomio anterior se crea la ecuación de la recta.
llEc = poly2sym(ec,t)

%children encuentra las subexpresiones o términos de una expresión simbólica
sp = children(llEc)

%vpa devuelve una aproximación numérica para expresiones  que utilizan
%variables simbólicas
t1 = vpa(sp(1))
t2 = vpa(sp(2))

%Se pasan por separado los términos del polinomio correspondiente a la
%ecuación y se convierten a caracteres los términos de la ecuación, 
%debido a que éstas son de tipo variable simbólica.
set(handles.ecuacionE,'string',char(t1))
set(handles.ecuacionE2, 'string',char(t2))

%Se ajusta el rango de tendencia de los valores en x para la línea
xFitted = 0:19

%Se ajustan los valores de y
yFitted = polyval(ec,xFitted)

%Se grafica tanto el modelo como los valores originales
plot(xFitted,yFitted,'mo-',x,y,'bd-')



function ecuacionE_Callback(hObject, eventdata, handles)
% hObject    handle to ecuacionE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ecuacionE as text
%        str2double(get(hObject,'String')) returns contents of ecuacionE as a double


% --- Executes during object creation, after setting all properties.
function ecuacionE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ecuacionE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ecuacionE2_Callback(hObject, eventdata, handles)
% hObject    handle to ecuacionE2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ecuacionE2 as text
%        str2double(get(hObject,'String')) returns contents of ecuacionE2 as a double


% --- Executes during object creation, after setting all properties.
function ecuacionE2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ecuacionE2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
