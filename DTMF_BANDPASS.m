function [p_signal] = DTMF_BANDPASS(s_signal)
Fs = 8000;%�����ʣ�������Ŀ����8000
fl = 600;%��ͨ��Ƶ
fh = 1800;%��ͨ��Ƶ
N = 50;%����
wn = [fl fh]/(Fs/2);%��һ��
window = blackman(N+1);%�Ӵ���ʹ�ò���������
b = fir1(N,wn,window);%�㼫�����
p_signal = filter(b,1,s_signal);%�˲��������������
end