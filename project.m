function varargout = project(varargin)
% PROJECT MATLAB code for project.fig
%      PROJECT, by itself, creates a new PROJECT or raises the existing
%      singleton*.
%
%      H = PROJECT returns the handle to a new PROJECT or the handle to
%      the existing singleton*.
%
%      PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT.M with the given input arguments.
%
%      PROJECT('Property','Value',...) creates a new PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project

% Last Modified by GUIDE v2.5 21-Dec-2021 01:19:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_OpeningFcn, ...
                   'gui_OutputFcn',  @project_OutputFcn, ...
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


% --- Executes just before project is made visible.
function project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project (see VARARGIN)

% Choose default command line output for project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when figure1 is resized.
function figure1_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in tag_gray.
function tag_gray_Callback(hObject, eventdata, handles)
% hObject    handle to tag_gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns tag_gray contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tag_gray


% --- Executes during object creation, after setting all properties.
function tag_gray_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tag_gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in tag_rgb.
function tag_rgb_Callback(hObject, eventdata, handles)
% hObject    handle to tag_rgb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns tag_rgb contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tag_rgb


% --- Executes during object creation, after setting all properties.
function tag_rgb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tag_rgb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
getFilterValue =get(handles.tag_gray,'value');
getFilterString =get(handles.tag_gray,'string');
old_image = handles.imagefile;
axes(handles.axes1);
imshow(old_image);
switch getFilterString{getFilterValue}
    case 'Identity'
        [new_image] = identity(old_image);
    case 'Negative'
         [new_image] = negative(old_image); 
    case 'Log'
        [new_image] = logg( old_image );
    case 'InverseLog'
        [new_image] = inverselog( old_image );
    case 'Power(Gamma)'
        [new_image] = powerr( old_image );
    case 'Root'
        [new_image] = root( old_image );
    case 'Brightness'
        [new_image] = brightness( old_image );
    case 'gray to binary'
        [new_image] = graytobinary2( old_image );
    case 'RGB to gray'
        [new_image] = rgbtogray2( old_image );
    case 'RGB to binary'
        [new_image] = rgbtobinary( old_image );
    case 'Histogram'
        [h w l]=size(old_image);
        if l==1
            [new_image] = histogram_gray(old_image);
            axes(handles.axes2);
            bar(new_image);
            return;
        else
            [red green blue] = histogram_rgb(old_image);
            figure,bar(red);
            figure,bar(green);
            figure,bar(blue);
            return;
        end
    case 'Equaliztion histogram'
        [new_image] = equaliztionhistogram(old_image);
    case 'contrast stretching'
        [new_image] = contraststretching(old_image);
    case 'point detection'
        [new_image] = point_detection(old_image);
    case 'point sharpening'
        [new_image] = point_sharpening(old_image);
    case 'line detection'
        [new_image] = line_detection(old_image);
    case 'line sharpening'
        [new_image] = line_sharpening(old_image);
    case 'Min filter'
        [new_image] = min_filter(old_image);
    case 'Max filter'
        [new_image] = max_filter(old_image);
    case 'Median  filter'
        [new_image] = median_filter(old_image);
    case 'Medpoint filter'
        [new_image] = medpoint(old_image);
    case 'mean filter'
        [new_image] = meanf(old_image);
    case 'weight filter'
        [new_image] = weight(old_image);
    case 'Correlation'
        [new_image] = correlation(old_image);
    case 'Fourier Transform'
        [new_image] = FourierTransform(old_image);
    case 'Inverse Fourier Transform'
        [new_image] = FourierTransforminverse(old_image);
    case 'salt&pepper noise'
        [new_image] = saltandpepper(old_image);
    case 'uniform noise'
        [new_image] = uniform_noise(old_image);
    case 'gaussian noise'
        [new_image] = gaussian_noise(old_image);
    case 'rayleigh noise'
        [new_image] = rayleigh_noise(old_image);
    case 'exponential noise'
        [new_image] = exponential_noise(old_image);
    case 'gamma noise'
        [new_image] = gamma_noise(old_image);
    case 'Ideal highpass and lowpass filter'
        [new_image] = ideal_filter(old_image);
    case 'Butterworth highpass and lowpass filter'
        [new_image] = butterworth_filter(old_image);
    case 'Gaussian highpass and lowpass filter'
        [new_image] = gaussian_filter(old_image);
end
axes(handles.axes2);
imshow(new_image);
        
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function numb_Callback(hObject, eventdata, handles)
% hObject    handle to numb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numb as text
%        str2double(get(hObject,'String')) returns contents of numb as a double


% --- Executes during object creation, after setting all properties.
function numb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)


% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function option_Callback(hObject, eventdata, handles)
% hObject    handle to option (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of option as text
%        str2double(get(hObject,'String')) returns contents of option as a double


% --- Executes during object creation, after setting all properties.
function option_CreateFcn(hObject, eventdata, handles)
% hObject    handle to option (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
s='';
s1=1;
cla(handles.axes1,'reset');
cla(handles.axes2,'reset');
set(handles.tag_gray,'Value',s1);
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
closereq();
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function mask_Callback(hObject, eventdata, handles)
% hObject    handle to mask (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mask as text
%        str2double(get(hObject,'String')) returns contents of mask as a double


% --- Executes during object creation, after setting all properties.
function mask_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mask (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in gray.
function gray_Callback(hObject, eventdata, handles)
% hObject    handle to gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of gray


% --- Executes on button press in rgb.
function rgb_Callback(hObject, eventdata, handles)
% hObject    handle to rgb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of rgb


% --- Executes on button press in select.
function select_Callback(hObject, eventdata, handles)
% hObject    handle to select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename filepath] = uigetfile({'*.*';'*.jpg';'*.png';'*.bmp';'*.tif'},'search image');
if isequal(filename,0) || isequal(filepath,0)
    errordlg('you did not choose an image!');
    return;
else
    msgbox('Done');
    fullname = [filepath filename];
    %read image 
    imagefile = imread(fullname);
    handles.imagefile = imagefile;
    guidata(hObject, handles);
end
