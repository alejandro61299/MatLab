function varargout = exercice_1(varargin)
%EXERCICE_1 MATLAB code file for exercice_1.fig
%      EXERCICE_1, by itself, creates a new EXERCICE_1 or raises the existing
%      singleton*.
%
%      H = EXERCICE_1 returns the handle to a new EXERCICE_1 or the handle to
%      the existing singleton*.
%
%      EXERCICE_1('Property','Value',...) creates a new EXERCICE_1 using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to exercice_1_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      EXERCICE_1('CALLBACK') and EXERCICE_1('CALLBACK',hObject,...) call the
%      local function named CALLBACK in EXERCICE_1.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help exercice_1

% Last Modified by GUIDE v2.5 22-Nov-2018 18:36:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @exercice_1_OpeningFcn, ...
                   'gui_OutputFcn',  @exercice_1_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before exercice_1 is made visible.
function exercice_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for exercice_1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes exercice_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = exercice_1_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in push_buttom_continue.
function push_buttom_continue_Callback(hObject, eventdata, handles)

q_a_0 = str2double(get(handles.edit_text_q_a_0 , 'String'));
q_a_1 =  str2double(get(handles.edit_text_q_a_0 ,'String'));
q_a_2 =  str2double(get(handles.edit_text_q_a_0 , 'String'));
q_a_3 =  str2double(get(handles.edit_text_q_a_0 , 'String'));

q_a = [q_a_0, q_a_1, q_a_2, q_a_3];

% hObject    handle to push_buttom_continue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit_text_q_c_0_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_q_c_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_q_c_0 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_q_c_0 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_q_c_0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_q_c_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_q_c_1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_q_c_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_q_c_1 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_q_c_1 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_q_c_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_q_c_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_q_c_2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_q_c_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_q_c_2 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_q_c_2 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_q_c_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_q_c_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_q_c_3_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_q_c_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_q_c_3 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_q_c_3 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_q_c_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_q_c_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_q_a_2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_q_a_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_q_a_2 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_q_a_2 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_q_a_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_q_a_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_q_a_3_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_q_a_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_q_a_3 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_q_a_3 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_q_a_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_q_a_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_q_a_0_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_q_a_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_q_a_0 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_q_a_0 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_q_a_0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_q_a_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_q_a_1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_q_a_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_q_a_1 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_q_a_1 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_q_a_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_q_a_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_q_b_3_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_q_b_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_q_b_3 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_q_b_3 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_q_b_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_q_b_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_q_b_2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_q_b_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_q_b_2 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_q_b_2 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_q_b_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_q_b_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_q_b_1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_q_b_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_q_b_1 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_q_b_1 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_q_b_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_q_b_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_q_b_0_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_q_b_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_q_b_0 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_q_b_0 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_q_b_0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_q_b_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end













