function UI_Setting(handles,hObject)
R = imread('.\icon\back_r.png');
G = imread('.\icon\back_g.png');
B = imread('.\icon\back_b.png');
W = imread('.\icon\back_w.png');

%���Ű�ť
position_P = get(handles.pushbutton26,'Position');
I_P = imread('.\icon\Phone.png');   %��ȡͼƬ
I_P = imresize(I_P, [position_P(4)*2.85*5, position_P(3)*5]);
set(handles.pushbutton26,'CData',I_P);  %����ť�ı���ͼƬ���ó�I��������ť
guidata(hObject, handles);

%�Ҷϰ�ť
position_H = get(handles.pushbutton28,'Position');
I_H = imread('.\icon\Hang_up.png');   %��ȡͼƬ
I_H = imresize(I_H, [position_H(4)*2.85*5, position_H(3)*5]);
set(handles.pushbutton28,'CData',I_H);  %����ť�ı���ͼƬ���ó�I��������ť
guidata(hObject, handles);

%�����ť
position_WIPE = get(handles.pushbutton25,'Position');
I_WIPE = imread('.\icon\WIPE.png');   %��ȡͼƬ
I_WIPE = imresize(I_WIPE, [position_WIPE(4)*2.85*5, position_WIPE(3)*5]);
set(handles.pushbutton25,'CData',I_WIPE);  %����ť�ı���ͼƬ���ó�I��������ť
guidata(hObject, handles);

%���˰�ť
position_BACKS = get(handles.pushbutton27,'Position');
I_BACKS = imread('.\icon\BackS.png');   %��ȡͼƬ
I_BACKS = imresize(I_BACKS, [position_BACKS(4)*2.85*5, position_BACKS(3)*5]);
set(handles.pushbutton27,'CData',I_BACKS);  %����ť�ı���ͼƬ���ó�I��������ť
guidata(hObject, handles);

%���̰�ť123456789
I_Button = imread('.\icon\P_button.png');
set(handles.pushbutton5,'CData',I_Button);
set(handles.pushbutton6,'CData',I_Button); 
set(handles.pushbutton7,'CData',I_Button); 
set(handles.pushbutton9,'CData',I_Button); 
set(handles.pushbutton10,'CData',I_Button);  %����ť�ı���ͼƬ���ó�I��������ť
set(handles.pushbutton11,'CData',I_Button);  %����ť�ı���ͼƬ���ó�I��������ť
set(handles.pushbutton13,'CData',I_Button);  %����ť�ı���ͼƬ���ó�I��������ť
set(handles.pushbutton14,'CData',I_Button);  %����ť�ı���ͼƬ���ó�I��������ť
set(handles.pushbutton15,'CData',I_Button);  %����ť�ı���ͼƬ���ó�I��������ť
%���̰�ť����
I_Button_F = imread('.\icon\P_button_Full.png');
set(handles.pushbutton8,'CData',I_Button_F);  %����ť�ı���ͼƬ���ó�I��������ť
set(handles.pushbutton12,'CData',I_Button_F);  %����ť�ı���ͼƬ���ó�I��������ť
set(handles.pushbutton16,'CData',I_Button_F);  %����ť�ı���ͼƬ���ó�I��������ť
set(handles.pushbutton17,'CData',I_Button_F);  %����ť�ı���ͼƬ���ó�I��������ť
set(handles.pushbutton18,'CData',I_Button_F);  %����ť�ı���ͼƬ���ó�I��������ť
set(handles.pushbutton19,'CData',I_Button_F);  %����ť�ı���ͼƬ���ó�I��������ť
set(handles.pushbutton20,'CData',I_Button_F);  %����ť�ı���ͼƬ���ó�I��������ť


Func_button_big = imread('.\icon\Func_button_big.png');
%�˲�����ť
set(handles.pushbutton30,'CData',Func_button_big);  %����ť�ı���ͼƬ���ó�I��������ť
guidata(hObject, handles);
%�˲�������ָʾ��
set(handles.pushbutton29,'CData',G);  %����ť�ı���ͼƬ���ó�I��������ť
guidata(hObject, handles);
%�˲����ر�ָʾ��
set(handles.pushbutton32,'CData',R);  %����ť�ı���ͼƬ���ó�I��������ť
guidata(hObject, handles);

%�Զ���ť
set(handles.autobutton,'CData',Func_button_big);  %����ť�ı���ͼƬ���ó�I��������ť
guidata(hObject, handles);
%�Զ�����ָʾ��
set(handles.autog,'CData',G);  %����ť�ı���ͼƬ���ó�I��������ť
guidata(hObject, handles);
%�Զ��ر�ָʾ��
set(handles.autor,'CData',R);  %����ť�ı���ͼƬ���ó�I��������ť
guidata(hObject, handles);

%�źż�鰴ť
position_SC = get(handles.pushbutton60,'Position');
Func_button_big_SC = imread('.\icon\Func_button_big.png');
Func_button_big_SC = imresize(Func_button_big_SC, [position_SC(4)*2.85*5, position_SC(3)*5]);
set(handles.pushbutton60,'CData',Func_button_big_SC);
guidata(hObject, handles);

%�ӽ��л���ť
position_vc = get(handles.pushbutton61,'Position');
Func_button_big_vc = imread('.\icon\back_b.png');
Func_button_big_vc = imresize(Func_button_big_vc, [position_vc(4)*2.85*5, position_vc(3)*5]);
set(handles.pushbutton61,'CData',Func_button_big_vc);
guidata(hObject, handles);
end

