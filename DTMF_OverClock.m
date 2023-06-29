function [Gain_OC,SNR_dB_OC] = DTMF_OverClock(n,handles)
global SNR_dB
global Gain
Gain_dB = round(10*log10(Gain),2);

if n == 1%������Ƶ
    Gain_dB = 4;
    Gain_OC = 10^(Gain_dB/10);
    set(handles.slider6,'Value',2);%�����2ֻ��Ϊ�������ʶ�������
    set(handles.radiobutton1,'Value',1);%������Ƶ��
    set(handles.edit3,'String','OC-4');%ָʾ���ֵ
    set(handles.edit3,'ForeGroundcolor',[1,0,0]);%����������ɫ���
    SNR_dB_OC =  0.9*SNR_dB + 2;%��������油��
    set(handles.edit2,'ForeGroundcolor',[1,0,0]);%�����������ɫ���
    set(handles.slider5,'Value',SNR_dB_OC);%������ʾ��Ƶ���⸽�������
    set(handles.edit2,'String',SNR_dB_OC);%����Ȼ���չʾ   

    
elseif n == 0%�رճ�Ƶ
    set(handles.slider6,'Value',Gain_dB);%���滬����ԭ
    set(handles.radiobutton1,'Value',0);%�رճ�Ƶ��
    set(handles.edit3,'String',Gain_dB);%������ʾ��ԭ
    set(handles.edit3,'ForeGroundcolor',[0,0,0]);%����������ɫ��ԭ
    
    set(handles.slider5,'Value',SNR_dB);%����Ȼ�����ԭ
    set(handles.edit2,'String',SNR_dB);%�������ʾ��ԭ
    set(handles.edit2,'ForeGroundcolor',[0,0,0]);%�����������ɫ��ԭ

end
end

