function varargout = ex3(varargin)
% EX3 MATLAB code for ex3.fig
%      EX3, by itself, creates a new EX3 or raises the existing
%      singleton*.
%
%      H = EX3 returns the handle to a new EX3 or the handle to
%      the existing singleton*.
%
%      EX3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EX3.M with the given input arguments.
%
%      EX3('Property','Value',...) creates a new EX3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ex3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ex3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ex3

% Last Modified by GUIDE v2.5 01-Dec-2018 23:47:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ex3_OpeningFcn, ...
                   'gui_OutputFcn',  @ex3_OutputFcn, ...
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

% --- Executes just before ex3 is made visible.
function ex3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ex3 (see VARARGIN)

% Choose default command line output for ex3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ex3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ex3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider_angle_Callback(hObject, eventdata, handles)
% hObject    handle to slider_angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
angle = get(handles.slider_angle, 'Value');
set(handles.text_angle, 'String', num2str(angle));
UpdateAxis(handles);

% --- Executes during object creation, after setting all properties.
function slider_angle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit_text_v_1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_v_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_v_1 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_v_1 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_v_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_v_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_v_2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_v_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_v_2 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_v_2 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_v_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_v_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_v_3_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_v_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_v_3 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_v_3 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_v_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_v_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_u_1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_u_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_u_1 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_u_1 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_u_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_u_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_u_2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_u_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_u_2 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_u_2 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_u_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_u_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_text_u_3_Callback(hObject, eventdata, handles)
% hObject    handle to edit_text_u_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_text_u_3 as text
%        str2double(get(hObject,'String')) returns contents of edit_text_u_3 as a double


% --- Executes during object creation, after setting all properties.
function edit_text_u_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_text_u_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function UpdateAxis(handles)
%Plot the axes
       %Initial coords      Final coords
ivec = [0,                  1;
        0,                  0;
        0,                  0];

jvec = [0,                  0;
        0,                  1;
        0,                  0];

kvec = [0,                  0;
        0,                  0;
        0,                  1];
x = 1;
y = 2;
z = 3;

plot3(ivec(x,:),ivec(y,:),ivec(z,:),'LineWidth',5);
hold on;
plot3(jvec(x,:),jvec(y,:),jvec(z,:),'LineWidth',5);
hold on;
plot3(kvec(x,:),kvec(y,:),kvec(z,:),'LineWidth',5);
hold on;

%Calculate and plot the vector
%- Get the vectors and transform them to quaternions before multiplying
angle = get(handles.slider_angle, 'Value');
uvec = [str2double(get(handles.edit_text_u_1, 'String'));
        str2double(get(handles.edit_text_u_2, 'String'));
        str2double(get(handles.edit_text_u_3, 'String'))];
uvec = uvec / norm(uvec);
uvec = sind(angle * 0.5) * uvec;
uquat = [cosd(angle * 0.5);
        uvec(1);
        uvec(2);
        uvec(3)];
vquat = [0;
         str2double(get(handles.edit_text_v_1, 'String'));
         str2double(get(handles.edit_text_v_2, 'String'));
         str2double(get(handles.edit_text_v_3, 'String'))];
%- Multiply the quaternions
rquat = MultiplyQuat(uquat, vquat);
uquat(2:end) = -uquat(2:end);
rquat = MultiplyQuat(rquat, uquat);
%- Extract the resulting vector
rvec = [0,                  rquat(2);
        0,                  rquat(3);
        0,                  rquat(4)];
plot3(rvec(x,:),rvec(y,:),rvec(z,:),'LineWidth',5);
hold on;

grid off;
axis off;
pbaspect([1 1 1]);
daspect([1 1 1]);
set(gca,'CameraPosition',[2 2 2]);
hold off;