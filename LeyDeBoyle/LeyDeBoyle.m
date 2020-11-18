function varargout = LeyDeBoyle(varargin)
% LEYDEBOYLE MATLAB code for LeyDeBoyle.fig
%      LEYDEBOYLE, by itself, creates a new LEYDEBOYLE or raises the existing
%      singleton*.
%
%      H = LEYDEBOYLE returns the handle to a new LEYDEBOYLE or the handle to
%      the existing singleton*.
%
%      LEYDEBOYLE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LEYDEBOYLE.M with the given input arguments.
%
%      LEYDEBOYLE('Property','Value',...) creates a new LEYDEBOYLE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LeyDeBoyle_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LeyDeBoyle_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LeyDeBoyle

% Last Modified by GUIDE v2.5 03-Oct-2020 20:14:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LeyDeBoyle_OpeningFcn, ...
                   'gui_OutputFcn',  @LeyDeBoyle_OutputFcn, ...
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


% --- Executes just before LeyDeBoyle is made visible.
function LeyDeBoyle_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LeyDeBoyle (see VARARGIN)

% Choose default command line output for LeyDeBoyle
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LeyDeBoyle wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LeyDeBoyle_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function vP_Callback(hObject, eventdata, handles)
% hObject    handle to vP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vP as text
%        str2double(get(hObject,'String')) returns contents of vP as a double


% --- Executes during object creation, after setting all properties.
function vP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vV1_Callback(hObject, eventdata, handles)
% hObject    handle to vV1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vV1 as text
%        str2double(get(hObject,'String')) returns contents of vV1 as a double


% --- Executes during object creation, after setting all properties.
function vV1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vV1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vV2_Callback(hObject, eventdata, handles)
% hObject    handle to vV2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vV2 as text
%        str2double(get(hObject,'String')) returns contents of vV2 as a double


% --- Executes during object creation, after setting all properties.
function vV2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vV2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


p1 = str2double(get(handles.vP , 'string'));
v1 = str2double(get(handles.vV1 , 'string'));
v2 = str2double(get(handles.vV2 , 'string'));

p2 = (p1*v1)/v2;

set(handles.Res , 'string',p2);
