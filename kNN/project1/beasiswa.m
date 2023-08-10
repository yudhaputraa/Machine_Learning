function varargout = beasiswa(varargin)
% BEASISWA MATLAB code for beasiswa.fig
%      BEASISWA, by itself, creates a new BEASISWA or raises the existing
%      singleton*.
%
%      H = BEASISWA returns the handle to a new BEASISWA or the handle to
%      the existing singleton*.
%
%      BEASISWA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BEASISWA.M with the given input arguments.
%
%      BEASISWA('Property','Value',...) creates a new BEASISWA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before beasiswa_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to beasiswa_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help beasiswa

% Last Modified by GUIDE v2.5 10-Aug-2023 02:45:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @beasiswa_OpeningFcn, ...
                   'gui_OutputFcn',  @beasiswa_OutputFcn, ...
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


% --- Executes just before beasiswa is made visible.
function beasiswa_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to beasiswa (see VARARGIN)
data = [0.8	0.8	0;
1.2	1	0;
1	1.2	0;
2	1.5	0;
0.7	1.5	0;
2.5	3	1;
3	2.5	1;
3	2	1;
3	3	1;
3.5	3.9	1;
2.5	3.5	1;]

handles.data = data;

% Choose default command line output for beasiswa
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes beasiswa wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = beasiswa_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ipk_Callback(hObject, eventdata, handles)
% hObject    handle to ipk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

ipk=str2double(get(hObject,'String'));
handles.ipk=ipk;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function ipk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ipk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TM_Callback(hObject, eventdata, handles)
% hObject    handle to TM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

tm=str2double(get(hObject,'String'));
handles.TM=tm;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function TM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hitung.
function hitung_Callback(hObject, eventdata, handles)
% hObject    handle to hitung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = handles.data;
ipk = handles.ipk;
tm = handles.TM;
test = [ipk tm];
class = classify(handles.data(:, 1:2), handles.data(:, 1:2), handles.data(:, 3));
if class == 1
    set(handles.hasil, 'String','Mendapat Beasiswa')
else
    set(handles.hasil, 'String','Tidak Mendapat Beasiswa')
end


function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil as text
%        str2double(get(hObject,'String')) returns contents of hasil as a double


% --- Executes during object creation, after setting all properties.
function hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
