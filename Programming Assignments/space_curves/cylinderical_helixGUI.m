function varargout = cylinderical_helixGUI(varargin)
% CYLINDERICAL_HELIXGUI MATLAB code for cylinderical_helixGUI.fig
%      CYLINDERICAL_HELIXGUI, by itself, creates a new CYLINDERICAL_HELIXGUI or raises the existing
%      singleton*.
%
%      H = CYLINDERICAL_HELIXGUI returns the handle to a new CYLINDERICAL_HELIXGUI or the handle to
%      the existing singleton*.
%
%      CYLINDERICAL_HELIXGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CYLINDERICAL_HELIXGUI.M with the given input arguments.
%
%      CYLINDERICAL_HELIXGUI('Property','Value',...) creates a new CYLINDERICAL_HELIXGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cylinderical_helixGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cylinderical_helixGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cylinderical_helixGUI

% Last Modified by GUIDE v2.5 19-Nov-2014 14:44:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cylinderical_helixGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @cylinderical_helixGUI_OutputFcn, ...
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


% --- Executes just before cylinderical_helixGUI is made visible.
function cylinderical_helixGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cylinderical_helixGUI (see VARARGIN)

% Choose default command line output for cylinderical_helixGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes cylinderical_helixGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(gcf, 'Toolbar', 'figure')
a = str2double(get(handles.edit1,'String'));
b = str2double(get(handles.edit2,'String'));
c = str2double(get(handles.edit3,'String'));
set(handles.slider1,'value',a);
set(handles.slider2,'value',b);
set(handles.slider2,'value',c);
cylindrical_helix(a,b,c);


% --- Outputs from this function are returned to the command line.
function varargout = cylinderical_helixGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = 2;
b = 2;
c = 10;
cylindrical_helix(a,b,c);
set(handles.edit1,'string',a);
set(handles.slider1,'value',a);
set(handles.edit2,'string',b);
set(handles.slider2,'value',b);
set(handles.edit3,'string',c);
set(handles.slider3,'value',c);

% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
a = get(handles.slider1,'value');
b = get(handles.slider2,'value');
c = get(handles.slider3,'value');
cylindrical_helix(a,b,c);
set(handles.edit1,'String',a);

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
set(hObject,'value',2);
set(hObject,'max',100);
set(hObject,'min',0);

% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
a = get(handles.slider1,'value');
b = get(handles.slider2,'value');
c = get(handles.slider3,'value');
cylindrical_helix(a,b,c);
set(handles.edit2,'String',b);

% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
set(hObject,'value',2);
set(hObject,'max',100);
set(hObject,'min',0);

% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
a = get(handles.slider1,'value');
b = get(handles.slider2,'value');
c = get(handles.slider3,'value');
cylindrical_helix(a,b,c);
set(handles.edit3,'String',c);

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
set(hObject,'value',10);
set(hObject,'max',100);
set(hObject,'min',0);


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
a = str2double(get(handles.edit1,'String'));
b = str2double(get(handles.edit2,'String'));
c = str2double(get(handles.edit3,'String'));
cylindrical_helix(a,b,c);
set(handles.slider1,'value',a);

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
a = str2double(get(handles.edit1,'String'));
b = str2double(get(handles.edit2,'String'));
c = str2double(get(handles.edit3,'String'));
cylindrical_helix(a,b,c);
set(handles.slider2,'value',b);

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
a = str2double(get(handles.edit1,'String'));
b = str2double(get(handles.edit2,'String'));
c = str2double(get(handles.edit3,'String'));
cylindrical_helix(a,b,c);
set(handles.slider3,'value',c);

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
