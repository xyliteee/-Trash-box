function DTMF_J(handles,MF_out,identifyed_str)
%���������һ�����ܺ�����û�����Ϸ���ֵ���������жϸ��źŵĲ����벢�����

global lim_n
global identifyed_str_Full

%��ȡ��Ƶ��Ƶ�����ǿ��
[maxnl1,~] = max(MF_out(1,:));
[maxnl2,~] = max(MF_out(2,:));
[maxnl3,~] = max(MF_out(3,:));
[maxnl4,~] = max(MF_out(4,:));

%��ȡ��Ƶ��Ƶ�����ǿ��
[maxnh1,~] = max(MF_out(5,:));
[maxnh2,~] = max(MF_out(6,:));
[maxnh3,~] = max(MF_out(7,:));
[maxnh4,~] = max(MF_out(8,:));

%����1
if maxnl1 > lim_n && maxnh1 > lim_n && maxnl2 < lim_n && maxnl3 < lim_n && maxnl4 < lim_n && maxnh2 < lim_n && maxnh3 < lim_n && maxnh4 < lim_n
    identifyed_str_Full = [identifyed_str_Full,identifyed_str];
    set(handles.edit1,'String',identifyed_str_Full);

%����2
elseif maxnl1 > lim_n && maxnh2 > lim_n && maxnl2 < lim_n && maxnl3 < lim_n && maxnl4 < lim_n && maxnh1 < lim_n && maxnh3 < lim_n && maxnh4 < lim_n
    identifyed_str_Full = [identifyed_str_Full,identifyed_str];
    set(handles.edit1,'String',identifyed_str_Full);
    
%����3
elseif maxnl1 > lim_n && maxnh3 > lim_n && maxnl2 < lim_n && maxnl3 < lim_n && maxnl4 < lim_n && maxnh1 < lim_n && maxnh2 < lim_n && maxnh4 < lim_n
    identifyed_str_Full = [identifyed_str_Full,identifyed_str];
    set(handles.edit1,'String',identifyed_str_Full);
    
%����A
elseif maxnl1 > lim_n && maxnh4 > lim_n && maxnl2 < lim_n && maxnl3 < lim_n && maxnl4 < lim_n && maxnh1 < lim_n && maxnh3 < lim_n && maxnh2 < lim_n
    identifyed_str_Full = [identifyed_str_Full,identifyed_str];
    set(handles.edit1,'String',identifyed_str_Full);
    
%����4
elseif maxnl2 > lim_n && maxnh1 > lim_n && maxnl1 < lim_n && maxnl3 < lim_n && maxnl4 < lim_n && maxnh2 < lim_n && maxnh3 < lim_n && maxnh4 < lim_n
    identifyed_str_Full = [identifyed_str_Full,identifyed_str];
    set(handles.edit1,'String',identifyed_str_Full);
    
%����5
elseif maxnl2 > lim_n && maxnh2 > lim_n && maxnl1 < lim_n && maxnl3 < lim_n && maxnl4 < lim_n && maxnh1 < lim_n && maxnh3 < lim_n && maxnh4 < lim_n
    identifyed_str_Full = [identifyed_str_Full,identifyed_str];
    set(handles.edit1,'String',identifyed_str_Full);
    
%����6
elseif maxnl2 > lim_n && maxnh3 > lim_n && maxnl1 < lim_n && maxnl3 < lim_n && maxnl4 < lim_n && maxnh1 < lim_n && maxnh2 < lim_n && maxnh4 < lim_n
    identifyed_str_Full = [identifyed_str_Full,identifyed_str];
    set(handles.edit1,'String',identifyed_str_Full);
    
%����B
elseif maxnl2 > lim_n && maxnh4 > lim_n && maxnl1 < lim_n && maxnl3 < lim_n && maxnl4 < lim_n && maxnh1 < lim_n && maxnh2 < lim_n && maxnh3 < lim_n
    identifyed_str_Full = [identifyed_str_Full,identifyed_str];
    set(handles.edit1,'String',identifyed_str_Full);

%����7
elseif maxnl3 > lim_n && maxnh1 > lim_n && maxnl1 < lim_n && maxnl2 < lim_n && maxnl4 < lim_n && maxnh4 < lim_n && maxnh2 < lim_n && maxnh3 < lim_n
    identifyed_str_Full = [identifyed_str_Full,identifyed_str];
    set(handles.edit1,'String',identifyed_str_Full);    

%����8
elseif maxnl3 > lim_n && maxnh2 > lim_n && maxnl1 < lim_n && maxnl2 < lim_n && maxnl4 < lim_n && maxnh4 < lim_n && maxnh1 < lim_n && maxnh3 < lim_n
    identifyed_str_Full = [identifyed_str_Full,identifyed_str];
    set(handles.edit1,'String',identifyed_str_Full);        

%����9
elseif maxnl3 > lim_n && maxnh3 > lim_n && maxnl1 < lim_n && maxnl2 < lim_n && maxnl4 < lim_n && maxnh4 < lim_n && maxnh1 < lim_n && maxnh2 < lim_n
    identifyed_str_Full = [identifyed_str_Full,identifyed_str];
    set(handles.edit1,'String',identifyed_str_Full); 

%����C
elseif maxnl3 > lim_n && maxnh4 > lim_n && maxnl1 < lim_n && maxnl2 < lim_n && maxnl4 < lim_n && maxnh3 < lim_n && maxnh1 < lim_n && maxnh2 < lim_n
    identifyed_str_Full = [identifyed_str_Full,identifyed_str];
    set(handles.edit1,'String',identifyed_str_Full);  
    
%����*
elseif maxnl4 > lim_n && maxnh1 > lim_n && maxnl1 < lim_n && maxnl2 < lim_n && maxnl1 < lim_n && maxnh3 < lim_n && maxnh4 < lim_n && maxnh2 < lim_n
    identifyed_str_Full = [identifyed_str_Full,identifyed_str];
    set(handles.edit1,'String',identifyed_str_Full);  
    
%����0
elseif maxnl4 > lim_n && maxnh2 > lim_n && maxnl1 < lim_n && maxnl2 < lim_n && maxnl1 < lim_n && maxnh3 < lim_n && maxnh4 < lim_n && maxnh1 < lim_n
    identifyed_str_Full = [identifyed_str_Full,identifyed_str];
    set(handles.edit1,'String',identifyed_str_Full);  
    
%����#
elseif maxnl4 > lim_n && maxnh3 > lim_n && maxnl1 < lim_n && maxnl2 < lim_n && maxnl1 < lim_n && maxnh2 < lim_n && maxnh4 < lim_n && maxnh1 < lim_n
    identifyed_str_Full = [identifyed_str_Full,identifyed_str];
    set(handles.edit1,'String',identifyed_str_Full);  
    
%����D
elseif maxnl4 > lim_n && maxnh4 > lim_n && maxnl1 < lim_n && maxnl2 < lim_n && maxnl1 < lim_n && maxnh2 < lim_n && maxnh3 < lim_n && maxnh1 < lim_n
    identifyed_str_Full = [identifyed_str_Full,identifyed_str];
    set(handles.edit1,'String',identifyed_str_Full);  
    
%�޷�����
else
    identifyed_str_Full = [identifyed_str_Full,'X'];
    set(handles.edit1,'String',identifyed_str_Full);  
end


