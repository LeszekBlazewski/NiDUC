function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 28-Apr-2019 13:03:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;
set(handles.sliderErrorRate, 'SliderStep', [0.005, 0.005]);

currentValue = get(handles.sliderErrorRate,'value');
set(handles.editErrorRate,'string',num2str(currentValue));

currentValue = get(handles.sliderTestQuantity,'value');
set(handles.editTestQuantity,'string',num2str(currentValue));
% set random engine
rng('shuffle');

% add listener to slider

addlistener(handles.sliderErrorRate ,'Value', 'PostSet', @ContSliderDragCB);
addlistener(handles.sliderTestQuantity ,'Value', 'PostSet', @ContTestQuantitySliderDragCB);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MAT LAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function editPacketSize_Callback(hObject, eventdata, handles)
% hObject    handle to editPacketSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPacketSize as text
%        str2double(get(hObject,'String')) returns contents of editPacketSize as a double


% --- Executes during object creation, after setting all properties.
function editPacketSize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPacketSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editPackageCount_Callback(hObject, eventdata, handles)
% hObject    handle to editPackageCount (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editPackageCount as text
%        str2double(get(hObject,'String')) returns contents of editPackageCount as a double


% --- Executes during object creation, after setting all properties.
function editPackageCount_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPackageCount (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderErrorRate_Callback(hObject, eventdata, handles)
% hObject    handle to sliderErrorRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

currentValue = get(hObject,'value');
set(handles.editErrorRate,'string',num2str(currentValue));



% --- Executes during object creation, after setting all properties.
function sliderErrorRate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderErrorRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function editTransferRate_Callback(hObject, eventdata, handles)
% hObject    handle to editTransferRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editTransferRate as text
%        str2double(get(hObject,'String')) returns contents of editTransferRate as a double


% --- Executes during object creation, after setting all properties.
function editTransferRate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editTransferRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function editFileName_Callback(hObject, eventdata, handles)
% hObject    handle to editFileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFileName as text
%        str2double(get(hObject,'String')) returns contents of editFileName as a double


% --- Executes during object creation, after setting all properties.
function editFileName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttonRun.
function pushbuttonRun_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonRun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% get values from view
[codingProtocol,channelType,packetSize,packetCount,errorProbability,testQuantity,filename] = getValues(handles);

% init waitbar
progressInfo = waitbar(0,'Processing');
for x = 1:testQuantity
% set waitbar value
waitbar(x/testQuantity);
% generate data
data = generateData(packetCount,packetSize);

% time for ARQ protocol

[operationCounter, decodedData] = ArqStopAndWait(data,errorProbability,channelType,codingProtocol);

% get transfer statistics

[errorCounter,transmissionLengthRate] = getTransferStatistics(decodedData,data,operationCounter);


% output to console (csv format) !

format = '%s;%s;%.3f;%d;%d;%d;%.1f;\n';

oldmsgs = cellstr(get(handles.editLogs,'String'));
set(handles.editLogs,'String',[{sprintf(format,codingProtocol,channelType,errorProbability,packetCount,packetSize,errorCounter,transmissionLengthRate)};oldmsgs]);

% output to file (csv format, append) !
timeStamp = datestr(now, '_dd_mm_yyyyTHH_MM_SS_AM');
fileID = fopen(strcat(filename,timeStamp,'.csv'),'a');
fprintf(fileID,format,codingProtocol,channelType,errorProbability,packetCount,packetSize,errorCounter,transmissionLengthRate);
fclose(fileID);
end
close(progressInfo)


function editLogs_Callback(hObject, eventdata, handles)
% hObject    handle to editLogs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editLogs as text
%        str2double(get(hObject,'String')) returns contents of editLogs as a double


% --- Executes during object creation, after setting all properties.
function editLogs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editLogs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% get all values from GUI
function [codingProtocol,channelType,packetSize,packetCount,errorProbability,testQuantity, filename] = getValues(handles)
codingProtocol = get(get(handles.uibuttongroupProtocol,'SelectedObject'), 'Tag');
channelType = get(get(handles.uibuttongroupChannel,'SelectedObject'), 'Tag');
packetSize = str2double(get(handles.editPacketSize, 'String'));
packetCount = str2double(get(handles.editPackageCount, 'String'));
errorProbability = get(handles.sliderErrorRate,'value');
testQuantity = get(handles.sliderTestQuantity, 'value');
filename = get(handles.editFileName, 'String');


% --- Executes during object creation, after setting all properties.
function textErrorRate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textErrorRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

function ContSliderDragCB(hObject, eventdata)
handles = guidata(eventdata.AffectedObject);
Value   = get(eventdata.AffectedObject, 'Value');
set(handles.editErrorRate,'String', num2str(Value));

function ContTestQuantitySliderDragCB(hObject, eventdata)
handles = guidata(eventdata.AffectedObject);
Value   = get(eventdata.AffectedObject, 'Value');
set(handles.editTestQuantity,'String', num2str(Value));



function editErrorRate_Callback(hObject, eventdata, handles)
% hObject    handle to editErrorRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editErrorRate as text
%        str2double(get(hObject,'String')) returns contents of editErrorRate as a double
value = str2double(get(hObject,'String'));
set(handles.sliderErrorRate, 'value',value);




% --- Executes during object creation, after setting all properties.
function editErrorRate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editErrorRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editTestQuantity_Callback(hObject, eventdata, handles)
% hObject    handle to editTestQuantity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editTestQuantity as text
%        str2double(get(hObject,'String')) returns contents of editTestQuantity as a double
value = str2double(get(hObject,'String'));
set(handles.sliderTestQuantity, 'value',value);

% --- Executes during object creation, after setting all properties.
function editTestQuantity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editTestQuantity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderTestQuantity_Callback(hObject, eventdata, handles)
% hObject    handle to sliderTestQuantity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderTestQuantity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderTestQuantity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
