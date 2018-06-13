function varargout = interfaz(varargin)
% INTERFAZ MATLAB code for interfaz.fig
%      INTERFAZ, by itself, creates a new INTERFAZ or raises the existing
%      singleton*.
%
%      H = INTERFAZ returns the handle to a new INTERFAZ or the handle to
%      the existing singleton*.
%
%      INTERFAZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZ.M with the given input arguments.
%
%      INTERFAZ('Property','Value',...) creates a new INTERFAZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interfaz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interfaz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help interfaz

% Last Modified by GUIDE v2.5 09-Jun-2018 21:23:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interfaz_OpeningFcn, ...
                   'gui_OutputFcn',  @interfaz_OutputFcn, ...
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


% --- Executes just before interfaz is made visible.
function interfaz_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interfaz (see VARARGIN)

% Choose default command line output for interfaz
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes interfaz wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interfaz_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on selection change in rutas.
function rutas_Callback(hObject, eventdata, handles)
rutita= get(handles.rutas,'Value');
ruta1={'1. OBSERVATORIO','2. TACUBAYA','3. JUANACATLAN','4. CHAPULTEPEC','5. SEVILLA','6. INSURGENTES','7. CUAUHTEMOC','8. BALDERAS','9. SALTO DEL AGUA','10. ISABEL LA CATOLICA','11. PINO SUAREZ','12. MERCED','13. CANDELARIA','14. SAN LAZARO','15. MOCTEZUMA','16. BALBUENA','17. BOULEVARD PUERTO AEREO','18. GOMEZ FARIAS','19. ZARAGOZA','20.   PANTITLAN'};
ruta2={'1. CUATRO CAMINOS','2. PANTEONES','3. TACUBA','4. CUITLAHUAC','5. POPOTLA','6. COLEGIO MILITAR','7. NORMAL','8. SAN COSME','9. REVOLUCIÓN','10. HIDALGO','11. BELLAS ARTES','12. ALLENDE','13. ZOCALO','14. PINO SUAREZ','15. SAN ANTONIO ABAD','16. CHABACANO','17. VIADUCTO','18. XOLA','19. VILLA DE CORTES','20. NATIVITAS','21. PORTALES','22. ERMITA','23. GENERAL ANAYA','24. TASQUEÑA'};
ruta3={'1. INDIOS VERDES','2. DEPORTIVO 18 DE MARZO','3. POTRERO','4. LA RAZA','5. TLATELOLCO','6. GUERRERO','7. HIDALGO','8. JUAREZ','9. BALDERAS','10. NIÑOS HEROES','11. HOSPITAL GENERAL','12. CENTRO MEDICO','13. ETIOPIA/ PLAZA DE LA TRANSPARENCIA','14.  EUGENIA','15. DIVISION DEL NORTE','16. ZAPATA','17. COYOACAN','18. VIVEROS/ DERECHOS HUMANOS','19. MIGUEL ANGEL DE QUEVEDO','20. COPILCO','21. UNIVERSIDAD'};
ruta4={'1. MARTÍN CARRERA','2. TALISMAN','3. BONDOJITO','4. CONSULADO','5. CANAL DEL NORTE','6. MORELOS','7. CANDELARIA','8. FRAY SERVANDO','9. JAMAICA','10. SANTA ANITA'};
ruta5={'1.  PANTITLAN','2.  HANGARES','3.  TERMINAL AEREA','4.  OCEANIA','5.  ARAGON','6.  EDUARDO MOLINA','7. COSULADO','8.  VALLE GOMEZ','9.  MISTERIOS','10. LA RAZA','11. AUTOBUSES DEL NORTE','12. INSTITUTO DEL PETROLEO','13. POLITECNICO'};
ruta6={'1.  EL ROSARIO','2.  TEZOZOMOC','3.  AZCAPOTZALCO','4.  FERRERIA/ ARENA CIUDAD DE MEXICO','5.  NORTE 45','6.   VALLEJO','7.   INSTITUTO DEL PETROLEO','8.   LINDAVISTA','9.   DEPORTIVO 18 DE MARZO','10.  LA VILLA/ BASILICA','11.  MARTIN CARRERA'};
ruta7={'1.  EL ROSARIO','2. AQUILES SERDÁN','3. CAMARONES','4. REFINERIA','5. TACUBA','6. SAN JOAQUIN','7. POLANCO','8. AUDITORIO','9. CONSTITUYENTES','10. TACUBAYA','11. SAN PEDRO DE LOS PINOS','12. SAN ANTONIO','13. MIXCOAC','14. BARRANCA DEL MUERTO'};
ruta8={'1. GARIBALDI/ LAGUNILLA','2. BELLAS ARTES','3. SAN JUAN DE LETRAN','4. SALTO DEL AGUA','5. DOCTORES','6. OBRERA','7. CHABACANO','8. LA VIGA','9. SANTA ANITA','10. COYUYA','11. IZTACALCO','12. APATLACO','13. ACULCO','14. ESCUADRON 201','15. ATLALILCO','16. IZTAPALAPA','17 .CERRO DE LA ESTRELLA','18. UAM-I','19. CONSTITUCION DE 1917'};
ruta9={'1. TACUBAYA','2. PATRIOTISMO','3. CHILPANCINGO','4. CENTRO MEDICO','5. LAZARO CARDENAS','6. CHABACANO','7. JAMAICA','8. MIXIUHCA','9. VELODROMO','10. CIUDAD DEPORTIVA','11. PUEBLA','12. PANTITLAN'};
rutaA={'1. PANTITLAN','2. AGRICOLA ORIENTAL','3. CANAL DE SAN JUAN','4. TEPALCATES','5. GUELATAO','6. PEÑON VIEJO','7. ACATITLA','8. SANTA MARTA','9. LOS REYES','10. LA PAZ'};
rutaB={'1. CIUDAD AZTECA','2. PLAZA ARAGON','3. OLIMPICA','4. ECATEPEC','5. MUZQUIZ','6. RIO DE LOS REMEDIOS','7. IMPULSORA','8. NEZAHUALCOYOTL','9. VILLA DE ARAGON','10. BOSQUE DE ARAGON','11. DEPORTIVO OCEANIA','12. OCEANIA','13. ROMERO RUBIO','14. RICARDO FLORES MAGON','15. SAN LAZARO','16. MORELOS','17. TEPITO','18. LAGUNILLA','19. GARIBALDI/ LAGUNILLA','20. GUERRERO','21. BUENAVISTA'};
ruta12={'1. MIXCOAC','2. INSURGENTES SUR','3. HOSPITAL 20 DE NOVIEMBRE','4. ZAPATA','5. PARQUE DE LOS VENADOS','6. EJE CENTRAL','7. ERMITA','8. MEXICALTZINGO','9. ATLALILCO','10. CULHUACAN','11. SAN ANDRES TOMATLAN','12. LOMAS ESTRELLAS','13. CALLE 11','14. PERIFERICO ORIENTE','15. TEZONCO','16. OLIVOS','17. NOPALERA','18. ZAPOTITLAN','19. TLALTENCO','20. TLAHUAC'};
nada={''};

switch rutita
  case 1
      if rutita=="Rutas"
    set(handles.inicio,'String',nada);
    set(handles.fin,'String',nada);
      end
  case 2
    set(handles.inicio,'String',ruta1);
    set(handles.fin,'String',ruta1);
  case 3
    set(handles.inicio,'String',ruta2);
     set(handles.fin,'String',ruta2);
  case 4
    set(handles.inicio,'String',ruta3);
     set(handles.fin,'String',ruta3);
  case 5
    set(handles.inicio,'String',ruta4);
     set(handles.fin,'String',ruta4);
  case 6
    set(handles.inicio,'String',ruta5);
     set(handles.fin,'String',ruta5);
  case 7
    set(handles.inicio,'String',ruta6);
     set(handles.fin,'String',ruta6);
    
  case 8
    set(handles.inicio,'String',ruta7);
     set(handles.fin,'String',ruta7);
  case 9
    set(handles.inicio,'String',ruta8);
     set(handles.fin,'String',ruta8);
  case 10
    set(handles.inicio,'String',ruta9);
     set(handles.fin,'String',ruta9);
  case 11
    set(handles.inicio,'String',rutaA);
    set(handles.fin,'String',rutaA);
  case 12
    set(handles.inicio,'String',rutaB);
      set(handles.fin,'String',rutaB);
  case 13
    set(handles.inicio,'String',ruta12);
     set(handles.fin,'String',ruta12);
  otherwise
    set(handles.inicio,'String',nada);
     set(handles.fin,'String',nada);
    
end


% --- Executes during object creation, after setting all properties.
function rutas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rutas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in inicio.
function inicio_Callback(hObject, eventdata, handles)
% hObject    handle to inicio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns inicio contents as cell array
%        contents{get(hObject,'Value')} returns selected item from inicio


% --- Executes during object creation, after setting all properties.
function inicio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inicio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in fin.
function fin_Callback(hObject, eventdata, handles)
% hObject    handle to fin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns fin contents as cell array
%        contents{get(hObject,'Value')} returns selected item from fin


% --- Executes during object creation, after setting all properties.
function fin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
