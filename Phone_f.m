function Phone_f(handles)
%���������һ�����ܺ�����û�����Ϸ���ֵ�����ڲ��Ű�ť�Ĺ���ʵ��
%ʺɽ�ۼ���

global signal_group;%����ȫ���ź���
global identifyed_str_out;%����ȫ��׼��������ַ���
global hang_up%�����Ҷϱ�ʶ
global identifyed_str_Full;%���������ź���
identifyed_str_out = [];%���ڰ���button26���Ű�ťǰ�����ַ����Ѿ�չʾ��ϣ����Գ�ʼ����Ϊ��һ��ʹ����׼��
hang_up = 0;%��ʼ���Ҷϱ�ʶ����b����̫���׿�û��

func_code = get(handles.edit5,'String');%��ȡ�������ڼ��绰�����Ƿ��ǹ��ܺ���

[ve,vFse]=audioread('.\sound\end.mp3');%��ȡ������Ƶ
[v,vFs]=audioread('hhh.mp3');
[vc,vFsc]=audioread('.\sound\calling.mp3');
[ver,vFser]=audioread('.\sound\error.mp3');
date = datestr(datetime, 'yyyy/mm/dd');%��ȡ����
time = datestr(datetime, 'HH:MM:ss');%��ȡʱ��


if strcmp(func_code,'*#*#4636#*#*') == 1%�����4636���򷵻زʵ�����ʵ����������������ã�
    set(handles.edit5,'string','����һ���ʵ�');
    signal_group = [];%��ʼ���ź��飬Ϊ��һ��ʹ����׼��
    set(handles.pushbutton28,'Visible','on');
    
elseif strcmp(func_code,'114514') == 1%�ߺߺ߰�����������
    set(handles.edit5,'string','�ߺߺ߰�����������');
    signal_group = [];%��ʼ���ź��飬Ϊ��һ��ʹ����׼��   
    sound(v,vFs);
    set(handles.pushbutton28,'Visible','on');
    
else%�������������
    set(handles.popupmenu2,'Visible','off');%��������ʽ�˵������Ǳ���bug
    set(handles.pushbutton28,'Visible','on');%��ʾ�Ҷϰ������Ͼ����ʱ���Ѿ����˲���
    set(handles.edit5,'String','������...');%��ʾ������
    [hang,~]=size(signal_group);%��ȡ�ź��������
    
    if hang == 0%����е���0��Ҳ����û�ж���
        
        set(handles.edit5,'String','����Ϊ��');%��ʾ����Ϊ��
        set(handles.pushbutton28,'Visible','off');
        %��ʼ���ź���
        set(handles.popupmenu2,'Visible','on');%��ʾ����ʽ�˵�
        
    else%������Ϊ��
        
        for i = 1:hang %ѭ����������ͬ������Ҳ���ǰ��ź��������
            
            delay_r_t = randi([0 30]);%����0-30�������
            delay_r = delay_r_t/50;%����50
            pause(delay_r);%ģ���ӳ�
            signal_single = signal_group(i,:);
            [MF_out,identifyed_str] = DTMF_recieve(signal_single);%�Ը��źŽ���DTMF_recieve����
            My_gui_out(handles,identifyed_str,MF_out);%�Դ������źŽ��л�ͼ�Լ���������ʾ����
        end
        
        identifyed_str_Full = [identifyed_str_Full,';'];%�����ܵ��ĵ绰�������;��������
        set(handles.edit1,'String',identifyed_str_Full);  
        E_code = get(handles.edit1,'String');%��ȡ���������ֵ
        E_J = contains(E_code,'X');%���ҽ��������Ƿ���'X'���޷��������źţ�
        
        if E_J == 0   %���û�У����к��У�ͨ���޸�10����0.4���ȴ�����ʱ����Ե���
            Phone_call();%���к���������ǿյ�
            sound(vc,vFsc);
            for i = 1:10
                if hang_up == 1%��������Ҷϣ���Ϊ�޷����ⲿ���forѭ����ֻ����ÿ��ѭ���м��봥��
                    clear sound;
                    sound(ve,vFse);
                    break;
                else
                    set(handles.edit5,'String','�ȴ���Ӧ.');
                    pause(0.4);
                end
                if hang_up == 1
                    clear sound;
                    sound(ve,vFse);
                    break;
                else
                    set(handles.edit5,'String','�ȴ���Ӧ..');
                    pause(0.4);
                end
                if hang_up == 1
                    clear sound;
                    sound(ve,vFse);
                    break;
                else
                    set(handles.edit5,'String','�ȴ���Ӧ...');
                    pause(0.4);
                end
            end
            if hang_up ==1%����Ҷϣ�Ϊʲô���ﻹҪ�ж�����Ϊ�Ҷ��벻�Ҷ϶��ǽ��������Ǻ���������ͬ��ǰ����Ϊ�˴�ϣ�������Ϊ�˺������������
                set(handles.edit5,'String','�ѹҶ�');
                
                phone_number = identifyed_str_Full(end-hang:1:end-1);%��ȡ���һ�β�����ܵ��ĵ绰����
                user_call = [date,'  ',time,'  ',phone_number,'   ','δ��ͨ--�Ҷ�'];%��ע����ʱ��绰����״̬
                Calling_history = fopen('.\DATA\Calling_history.txt','a');%��ͨ����¼���±������趨���ļ�������д��
                fprintf(Calling_history,'%s\n',user_call);%д��
                
                signal_group = [];%��ʼ���ź���
                set(handles.popupmenu2,'Visible','on');%��ʾ����ʽ�˵�
                
            else%���û�Ҷϣ�����ûд�ɹ���ͨ���϶���������Ӧ
                set(handles.edit5,'String','��ʱ���˽���');
                [vn,vFsn]=audioread('.\sound\nobody.mp3');
                sound(vn,vFsn);
                
                phone_number = identifyed_str_Full(end-hang:1:end-1);%��ȡ���һ�β�����ܵ��ĵ绰����
                user_call = [date,'  ',time,'  ',phone_number,'   ','δ��ͨ--���˽���'];
                Calling_history = fopen('.\DATA\Calling_history.txt','a');
                fprintf(Calling_history,'%s\n',user_call);
                
                signal_group = [];%��ʼ���ź���
                set(handles.popupmenu2,'Visible','on');%��ʾ����ʽ�˵�
            end
            
        else %������޷�������X
            set(handles.edit5,'String','�޷�������ָ������ֹ�����Ժ��ٲ�')
            sound(ver,vFser);
            
            phone_number = identifyed_str_Full(end-hang:1:end-1);%��ȡ���һ�β�����ܵ��ĵ绰����
            user_call = [date,'  ',time,'  ',phone_number,'   ','δ��ͨ--��������'];
            Calling_history = fopen('.\DATA\Calling_history.txt','a');
            fprintf(Calling_history,'%s\n',user_call);
            
            signal_group = [];%��ʼ���ź���
            identifyed_str_Full(end:-1:end-hang)=[];%ɾ���������ַ����飬�Ͼ��д���������
            set(handles.edit1,'String',identifyed_str_Full);
            set(handles.popupmenu2,'Visible','on');%��ʾ����ʽ�˵�
            set(handles.pushbutton28,'Visible','off');
        end
    end
end
end

