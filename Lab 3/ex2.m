function varargout = ex2(varargin)
% EX2 MATLAB code for ex2.fig
%      EX2, by itself, creates a new EX2 or raises the existing
%      singleton*.
%
%      H = EX2 returns the handle to a new EX2 or the handle to
%      the existing singleton*.
%
%      EX2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EX2.M with the given input arguments.
%
%      EX2('Property','Value',...) creates a new EX2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ex2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ex2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ex2

% Last Modified by GUIDE v2.5 01-Dec-2018 19:35:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ex2_OpeningFcn, ...
                   'gui_OutputFcn',  @ex2_OutputFcn, ...
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


% --- Executes just before ex2 is made visible.
function ex2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ex2 (see VARARGIN)

% Choose default command line output for ex2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ex2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ex2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_x_0_Callback(hObject, eventdata, handles)
% hObject    handle to edit_x_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_x_0 as text
%        str2double(get(hObject,'String')) returns contents of edit_x_0 as a double


% --- Executes during object creation, after setting all properties.
function edit_x_0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_x_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider_velocity_Callback(hObject, eventdata, handles)
% hObject    handle to slider_velocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
velocity = get(handles.slider_velocity, 'Value');
set(handles.text_velocity, 'String', num2str(velocity));

% --- Executes during object creation, after setting all properties.
function slider_velocity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_velocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit_y_0_Callback(hObject, eventdata, handles)
% hObject    handle to edit_y_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_y_0 as text
%        str2double(get(hObject,'String')) returns contents of edit_y_0 as a double


% --- Executes during object creation, after setting all properties.
function edit_y_0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_y_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider_angle_Callback(hObject, eventdata, handles)
% hObject    handle to slider_angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
angle = get(handles.slider_angle, 'Value');
set(handles.text_angle, 'String', num2str(angle));

% --- Executes during object creation, after setting all properties.
function slider_angle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton_calculate.
function pushbutton_calculate_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Get all necessary input
x_0 = str2double(get(handles.edit_x_0, 'String'));
y_0 = str2double(get(handles.edit_y_0, 'String'));
v_0 = get(handles.slider_velocity, 'Value');
angle_0 = get(handles.slider_angle, 'Value');

%Calculate the max height
g = 9.8;
%- We get the value of t when v_y = 0;
t = (v_0 * sind(angle_0)) / g;
%- We use t to calculate y in that time
y = y_0 + t * v_0 * sind(angle_0) - 0.5 * g * t * t;
set(handles.text_max_height, 'String', num2str(y));
max_height = y;

%Calculate range
%- We get the value of t when y(t)=0 (touching the ground)
a = -0.5 * g;
b = v_0 * sind(angle_0);
c = y_0;
t = (-b + sqrt(b*b-4*a*c))/(2*a);
if t <= 0
    t = (-b - sqrt(b*b-4*a*c))/(2*a);
end
%- We use t to calculate x in that time
x = x_0 + t * v_0 * cosd(angle_0);
set(handles.text_range, 'String', num2str(x));
range = x;

%Plot on the graph
%- Calculate x and y
x = x_0:0.1:range;
[~, xSize] = size(x);
for num = 1:1:xSize
    t = (x(num) - x_0) / v_0 * cosd(angle_0);
    y(num) = y_0 + t * v_0 * sind(angle_0) - 0.5 * g * t * t;
end
plot(x, y);
