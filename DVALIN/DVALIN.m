function varargout = DVALIN(varargin)
%DVALIN MATLAB code file for DVALIN.fig
%      DVALIN, by itself, creates a new DVALIN or raises the existing
%      singleton*.
%
%      H = DVALIN returns the handle to a new DVALIN or the handle to
%      the existing singleton*.
%
%      DVALIN('Property','Value',...) creates a new DVALIN using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to DVALIN_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      DVALIN('CALLBACK') and DVALIN('CALLBACK',hObject,...) call the
%      local function named CALLBACK in DVALIN.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DVALIN

% Last Modified by GUIDE v2.5 11-Jun-2018 07:54:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DVALIN_OpeningFcn, ...
                   'gui_OutputFcn',  @DVALIN_OutputFcn, ...
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


% --- Executes just before DVALIN is made visible.
function DVALIN_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for DVALIN
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DVALIN wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DVALIN_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
