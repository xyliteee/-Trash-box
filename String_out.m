function String_out(handles,strn)
%���������һ�����ܺ�����û�����Ϸ���ֵ��������ʾ����Ĳ�����

global identifyed_str_out;
identifyed_str_out = [identifyed_str_out,num2str(strn)];
set(handles.edit5,'String',identifyed_str_out);
end
